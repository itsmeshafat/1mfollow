<?php

namespace App\Http\Controllers\Admin;
use App\Models\User;
use App\Models\Wallet;
use App\Models\Country;
use App\Models\Deposit;
use App\Models\LoginLogs;
use App\Models\Transaction;
use App\Models\Withdrawals;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Generalsetting;
use Illuminate\Support\Facades\Auth;

class ManageUserController extends Controller
{

    public function index()
    {
        $search = request('search');
        $status = null;
        if(request('status') == 'active')  $status = 1;
        if(request('status') == 'banned')  $status = 2;
      
        $users = User::when($status,function($q) use($status) {
            return $q->where('status',$status);
        })->when($search,function($q) use($search) {
            return $q->where('email','like',"%$search%");
        })->latest()->paginate(15);

        return view('admin.user.index',compact('users','search'));
    }

  
    public function details($id)
    {
        $user = User::findOrFail($id);
        $countries = Country::get(['id','name']);
        $data['totalDeposit'] = Deposit::where('user_id',$user->id)->with('currency')->sum('default_curr_amount');
        return view('admin.user.details',compact('user','countries','data'));
    }

    public function profileUpdate(Request $request,$id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,'.$id,
            'phone' => 'required',
            'country' => 'required',
        ]);

        $user          = User::findOrFail($id);
        $user->name    = $request->name;
        $user->email   = $request->email;
        $user->phone   = $request->phone;
        $user->country = $request->country;
        $user->city    = $request->city;
        $user->zip     = $request->zip;
        $user->address = $request->address;
        $user->status  = $request->status ? 1 : 0;
        $user->email_verified  = $request->email_verified ? 1 : 0;
        $user->kyc_status  = $request->kyc_status ? 1 : 0;
        $user->update();

        return back()->with('success','User profile updated');
    }

   
    public function modifyBalance(Request $request)
    {
        $request->validate([
            'user_id'   => 'required',
            'amount'    => 'required|gt:0',
            'type'      => 'required|in:1,2'
         ]);
       
         $user  = User::findOrFail($request->user_id);
         if($request->type == 1){
            $user->balance += $request->amount;
            $user->update();

            $trnx              = new Transaction();
            $trnx->trnx        = str_rand();
            $trnx->user_id     = $request->user_id;
            $trnx->amount      = $request->amount;
            $trnx->charge      = 0;
            $trnx->remark      = 'add_balance';
            $trnx->type        = '+';
            $trnx->details     = trans('Balance added by system');
            $trnx->save();

            $msg = 'Balance has been added';

            @mailSend('add_balance',[
                'amount'=> amount($request->amount,2),
                'curr'  => Generalsetting::value('curr_code'),
                'trnx'  => $trnx->trnx,
                'after_balance' => amount($user->balance,2),
                'date_time'  => dateFormat($trnx->created_at)
                ],
            $user);
         }
         if($request->type == 2){
            $user->balance += $request->amount;
            $user->update();

            $trnx              = new Transaction();
            $trnx->trnx        = str_rand();
            $trnx->user_id     = $request->user_id;
            $trnx->amount      = $request->amount;
            $trnx->charge      = 0;
            $trnx->remark      = 'subtract_balance';
            $trnx->type        = '-';
            $trnx->details     = trans('Balance subtracted by system');
            $trnx->save();

            $msg = 'Balance has been subtracted';

            @mailSend('subtract_balance',[
                'amount'=> amount($request->amount,2),
                'curr'  => Generalsetting::value('curr_code'),
                'trnx'  => $trnx->trnx,
                'after_balance' => amount($user->balance,2),
                'date_time'  => dateFormat($trnx->created_at)
                ],
            $user);
         }

         return back()->with('success',$msg);
         
    }

    public function login($id)
    {
        $user = User::findOrFail($id);
        Auth::guard('web')->loginUsingId($user->id);
        return redirect(route('user.dashboard'));
    }
    
    public function loginInfo($id)
    {
        $user = User::findOrFail($id);
        $loginInfo = LoginLogs::where('user_id',$id)->latest()->paginate(15);
        return view('admin.user.login_info',compact('loginInfo','user'));
    }

    
}
