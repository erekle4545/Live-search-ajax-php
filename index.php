<?php
    global $domain,$ses_lang;
?>
<!DOCTYPE html>
<html>
<head>
<title>Search ajax - php</title>
</head>
<body>
<form action="" method="post" class="search__input">
    <input type="text"  autocomplete="off" name="search" class="search_ajax" placeholder="Search />

    <button name="subsearch" type="submit" class="search__input__loupebox">Search</button>
    <!-- ajax search -->
        <div class="search-drop">
            <ul class="search-drop-ul" id="search_result"></ul>
        </div>
    <!-- END ajax search -->
</form>

<script>
    $(document).ready(function(data){
        $(document).on('keyup', '.search_ajax', function(){
                var search_ajax = "search";
                var text = $(this).val();
                var lang = "<?php echo $ses_lang; ?>";
                $.ajax({
                    url:"data.php",
                    method:"POST",
                    dataType:"json",
                    data:{text:text, search_ajax:search_ajax,lang:lang},
                    success:function(data){
                        $('#search_result').html(data.search_result);

                        $('.result_number').text(data.search_result_number);

                       $(document).on('click', '.search_ajax_link', function(){
                       $('.et').addClass('active');
                        });

                    }
                });
        });


        // click body hidden
        $("body").click(function(e){
            if (e.target.className == "menu"){
              //  alert("do't hide");

            }else{
               $('#collapsingNavbar').css({ "z-index": "2000"});
                $('.search-drop-li').css("display","none");
                $('.et').removeClass('active');
            }
        });
    });

</script>
</body>
</html>
