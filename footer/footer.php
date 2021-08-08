
<head>
    <link rel="stylesheet" href="../footer/footerStyle.css">
</head>

    <div class="container1">
        <div class="first">
            <h2>Contact us</h2>
            <i class="fa fa-caret-down first-caret"></i>
            <hr>
            <span><i class="fas fa-home"></i>Batroun-Lebanon</span>
            <span ><i class="fas fa-phone-square-alt"></i>+961 76132016</span>
            <span><i class="fas fa-envelope-square"></i>wadihmorkos9@gmail.com</span>
        </div>
        <div class="second">
            <h2>Links</h2>
            <i class="fa fa-caret-down second-caret"></i>
            <hr>
            <ul class="list">
                <li><a href="#"><i class="fa fa-caret-right"></i>Home</a>
                <li><a href="#"><i class="fa fa-caret-right"></i>Products Categories</a>
            </ul>
        </div>
        <div class="third">
            <h2>Support</h2>
            <i class="fa fa-caret-down third-caret"></i>
            <hr>
            <ul class="list">
                <li><a href="#"><i class="fa fa-caret-right"></i>About us</a></li>
                <li><a href="#"><i class="fa fa-caret-right"></i>Contact us</a></li>
                <li><a href="#"><i class="fa fa-caret-right"></i>Returns policy and shipping details</a></li>
            </ul>   
        </div>
    <script>
        $(document).ready(function(){
           $(".first-caret").click(function(){
               $(".first span").toggle();
           });

           $(".second-caret").click(function(){
               $(".second .list").toggle();
           });

           $(".third-caret").click(function(){
               $(".third .list").toggle();
           });
        });

        
        $( window ).resize(function() {
        if($(window).width()>=751){
            $(".first span").show();
            $(".second .list").show();
            $(".third .list").show();
        }
        else{
            
            $(".first span").hide();
            $(".second .list").hide();
            $(".third .list").hide();
        }
            });

    
    </script>    
    </body>
</html>
