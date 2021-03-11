<?php
session_start();
if(isset($_POST['search_ajax'])){
    // db connect
        require_once "class/mydb.class.php";
        $db = new mydb();
    // end db connect
    // posts
        $search_result = "";
        $text = $_POST['text'];
        if($text != ""){
        $products =  $db->getDataWhereWhile('products',"ka_name LIKE '%{$text}%' or en_name LIKE '%{$text}%' or ru_name LIKE '%{$text}%'  or product_number LIKE '%{$text}%'  or menual_number LIKE '%{$text}%'  order by time Desc LIMIT 30");
            foreach ($products as $row){
                // url
                if($_POST['lang']=='ka'){
                    $title = $row['ka_name'];

                }elseif($_POST['lang']=='en'){
                    $title = $row['en_name']?$row['en_name']:$row['ka_name'];

                }
                $pro_url = $db->genUrl($title);
                $urlPro = strip_tags(trim("{$pro_url}"));
                $setUrlPro = "https://example.com/product/$urlPro/{$row['product_id']}/{$_SESSION['lang']}#product";
                // end url

                $search_result .= " <a  href='$setUrlPro' class='search_ajax_link'> <li class='search-drop-li'><p>{$title}</p> <img src='https://example.com/{$row['pr_image']}' style='padding: 5px;' height='70px'/></li></a>";

            }
            if(count($products)==null){
                if($_POST['lang']=='ka'){

                    $search_result_lang = "პროდუქტი ვერ მოიძებნა";
                }elseif($_POST['lang']=='en'){

                    $search_result_lang = "No Resault";
                }

                $search_result .= " <a  href='#' class='search_ajax_link'> <li class='search-drop-li'><p>{$search_result_lang}</p></li></a>";
            }
        }
        else
        {
			// language for search
            if($_POST['lang']=='ka'){

                $search_result_lang = "მოძებნე პროდუქტი სახელით";
            }elseif($_POST['lang']=='en'){

                $search_result_lang = "Search for a product by name";
            }

            $search_result .= " <a  href='#' class='search_ajax_link'> <li class='search-drop-li'><p>{$search_result_lang}</p></li></a>";

        }
     // end posts
// end  show cart items sum number
    $output_search = array(
        'search_result'     => $search_result,
    );
    echo json_encode($output_search);
	// json encoding for js
}
else
{
    header("location:../");
}
?>
