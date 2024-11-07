<?php
header("Content-Type:text/css");

function checkColor($color){
    return preg_match('/^#[a-f0-9]{6}$/i', $color);
}

if(isset($_GET['color']) && $_GET['color'] != '' && checkColor("#".$_GET['color']))  $color = "#".$_GET['color'];
else $color = "#5b53f1";


?>

:root {
    --base-clr: <?php echo $color ; ?>;
}