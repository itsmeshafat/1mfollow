<aside id="sidebar-wrapper">
  <div id="main_container">
    <div class="sidebar">
      <button class="sidebar_menu_icon" onclick="toggleSidebar()">
        <!-- <img src="https://cdn.mypanel.link/770smr/4j6ex4un1721ze8y.png" class="close_nav_day" alt="">
        <img src="https://cdn.mypanel.link/770smr/eco8hx40xz8d3lmf.png" class="open_nav_day" alt=""> -->
        <img src="https://cdn.mypanel.link/770smr/ie1rl1p1gwj5znf0.png" class="close_nav_day" alt="">
        <img src="https://cdn.mypanel.link/770smr/s0sa1hbdiaflcyyz.png" class="open_nav_day" alt="">
      </button>
      
      <div class="sidebar_top">
        <div class="logo">
          <img src="assets/images/12484979091655891347.png" class="logo_img img-fluid" alt="1mfollow" title="1mfollow.com">
        </div>
        
        <div class="user_data">
          <div class="user_badges" data-bs-toggle="modal" data-bs-target="#GGstaticBackdrop">
            <h4>NEW</h4>
          </div>
          
          <div class="total_data">
            <div class="user_wrap">
              <div class="v2_avatar">
                <img src="{{getPhoto(admin()->photo)}}" class="img-fluid" alt="1mfollow Avatar" id="profile1">
              </div>
              
              <div class="v2_user_info">
                <h5>{{admin()->name}}</h5>
              </div>
            </div>
            
            <div class="user_balance">
              Balance <span class="balance">{{number_format(auth()->user()->balance,2)}} {{$gs->curr_code}}</span>
            </div>
          </div>
        </div>
      </div>
      
      <div class="sidebar_bottom">
        <div class="sidebar_menu">
          <a href="https://1mfollow.com/user/new-order" class="menu_item active">
            <div class="menu_icon"><i class="fas fa-calendar-plus"></i></div>
            <div class="menu_name">New order</div>
          </a>
          
          <a href="https://1mfollow.com/user/new-mass-order" class="menu_item">
            <div class="menu_icon"><i class="fab fa-first-order-alt"></i></div>
            <div class="menu_name">Mass order</div>
          </a>
          
          <a href="https://1mfollow.com/user/order-history" class="menu_item">
            <div class="menu_icon"><i class="fas fa-star"></i></div>
            <div class="menu_name">Orders</div>
          </a>
          
          <a href="https://1mfollow.com/user/addfunds" class="menu_item">
            <div class="menu_icon"><i class="far fa-credit-card"></i></div>
            <div class="menu_name">Deposit</div>
          </a>
          
          <a href="https://1mfollow.com/user/tickets" class="menu_item">
            <div class="menu_icon"><i class="fas fa-ticket-alt"></i></div>
            <div class="menu_name">Tickets</div>
          </a>
          
          <a href="https://1mfollow.com/user/services" class="menu_item">
            <div class="menu_icon"><i class="fas fa-cog"></i></div>
            <div class="menu_name">Services</div>
          </a>

          <!-- Show More Btn Codes Start -->
          <!-- <div id="show_more_wrap">
            <button type="button" class="" id="showMore">
              <div class="menu_name">Show More</div>
              <div class="menu_icon"><i class="fas fa-caret-down"></i></div>
            </button>
          </div>
          
          <div id="more_menu">
            <a href="https://1mfollow.com/user/dashboard" class="menu_item">
              <div class="menu_icon"><i class="fas fa-chalkboard"></i></div>
              <div class="menu_name">Dashboard</div>
            </a>
            <a href="https://growfollows.com/updates" class="menu_item">
              <div class="menu_icon"><i class="fas fa-bullhorn"></i></div>
              <div class="menu_name">Last Updates</div>
            </a>
            <a href="https://growfollows.com/api" class="menu_item">
              <div class="menu_icon"><i class="fas fa-link"></i></div>
              <div class="menu_name">API</div>
            </a>
            <a href="https://growfollows.com/affiliates" class="menu_item">
              <div class="menu_icon"><i class="fas fa-share-alt"></i></div>
              <div class="menu_name">Refer and Earn</div>
            </a>
            <a href="https://growfollows.com/child-panel" class="menu_item">
              <div class="menu_icon"><i class="fas fa-child"></i></div>
              <div class="menu_name">Child panel</div>
            </a>
            <a href="https://growfollows.com/faq" class="menu_item">
              <div class="menu_icon"><i class="far fa-question-circle"></i></div>
              <div class="menu_name">FAQ'S</div>
            </a>
            <a href="https://growfollows.com/terms" class="menu_item">
              <div class="menu_icon"><i class="fas fa-clipboard-list"></i></div>
              <div class="menu_name">Terms</div>
            </a>
          </div> -->
          <!-- Show More Btn Codes End -->
        </div>
      </div>
    </div>
  </div>
</aside>
