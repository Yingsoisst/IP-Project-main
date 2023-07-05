<?php include('server.php');
session_start();

if(isset($_POST['conf'])){
    $name = $_POST['name1'];
    $phone = $_POST['phone1'];
    $money = $_POST['money'];
    $bank1 = $_POST['bank1'];
    $date = $_POST['date'];
    $picture = $_FILES['img_pay1']['name'];
    $image_temp_name = $_FILES['img_pay1']['tmp_name'];
    $folder_image = 'images/'.$picture;

    $address = $_SESSION['address'];

    $member = $_SESSION['id'];

    $insert = "INSERT INTO `payment_check` ( `check_product_id`, `check_product_name`, `check_product_image`, `check_product_price/piece`, `check_member_id`, check_memshop_id)
                SELECT `product_id`, `product_name`,`product_image`,`product_price/piece`, `member_id1`, member_id
                FROM `order` WHERE member_id1 = '".$_SESSION['id']."' " ;
    $insert_spl = mysqli_query($conn, $insert);

    $in_pay = "UPDATE `payment_check` SET `check_member_address1` = '$address', `pay_name` = '$name', pay_mobile = '$phone',`pay_money` = '$money', pay_image = '$picture', pay_bank = '$bank1', pay_date = '$date'
                WHERE `check_member_id` = '".$_SESSION['id']."' ;";
    $insert_pay = mysqli_query($conn, $in_pay);

    if ($insert_spl) {
        mysqli_query($conn, "DELETE FROM `order` WHERE member_id1 = '".$_SESSION['id']."' ");
    } else {
        echo "Error: " . mysqli_error($conn);
    }
    if($insert_pay){
        move_uploaded_file($image_temp_name, $folder_image);
    }

    $insert_p = "INSERT INTO `check_product` ( ) " ;
    

    // header('location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>paymentConfirmation</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>


<?php include 'header.php'; ?>

<form method="post" enctype="multipart/form-data">

    <div class="bg-slate-800 rounded-md ml-80 mt-5  flex flex-col  mb-16 text-white" style="width: 800px;height:810px;">
        <div class="ml-">
            <div class="flex flex-row ">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0 mt-10 ml-10">
                    ชื่อ-นามสกุล 
                    <input name="name1"class="appearance-none block w-full bg-gray-200 text-gray-700  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="">
                </div>
                <div class="w-full md:w-1/2 px-3 mt-10 ml-20">
                    เบอร์โทรศัพท์
                    <input name="phone1" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name" type="text" placeholder="000-000-0000">
                </div>
            </div>
            <div class="flex flex-row ">

                <div class="w-full md:w-1/2 px-3 mt-10 ml-10">
                    จำนวนเงินที่โอน:
                    <input name="money" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name" type="text" placeholder="">
                </div>
            </div>
            <div class="flex flex-row ">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0 mt-10 ml-10">
                    ธนาคารที่โอน
                    <input name="bank1" class="appearance-none block w-full bg-gray-200 text-gray-700  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="ธนาคาร">
                </div>
                <div class="flex flex-row mt-16 ml-10  text-black">
                    <div>
                        <label class=" text-white" for="date">วันที่โอน : </label>
                        <input type="date" name="date" required>

                    </div>
                </div>
            </div>
            <div class="flex flex-row ml-20 mt-16">
                <label for="slip">หลักฐานการโอน : </label>
                <div class="   ml-3">
                    <input id="dropzone-file" type="file" name="img_pay1" accept="image/png, image/jpg, image/jpeg" onchange="loadFile(event)" required>
                </div>

            </div>
            <div class=" ml-40 flex flex-col items-center justify-center w-full mt-4 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-lg cursor-pointer bg-gray-50 dark:hover:bg-bray-800 dark:bg-gray-500 hover:bg-gray-100 dark:border-gray-600 dark:hover:border-gray-200 dark:hover:bg-gray-600" style="width: 400px; height:250px">

                <img style="width: 400px; height:250px" id="output" />
                <script>
                    var loadFile = function(event) {
                        var output = document.getElementById('output');
                        output.src = URL.createObjectURL(event.target.files[0]);
                        output.onload = function() {
                            URL.revokeObjectURL(output.src) // free memory
                        }
                    };
                </script>
            </div>
        </div>
        <!-- <div class=" ml-80 bg-amber-600 w-24 h-10  rounded-lg  mt-10"> -->
           <!-- <a href="index.php"> -->
                <button name="conf" type="submit" class="bg-amber-600 ml-80 mt-10 w-24 h-10 rounded-lg text-center mt-2">ยืนยันคำสั่งซื้อ</button>
            <!-- </a>  -->
        <!-- </div> -->

    </div>
</form>
                    
    <?php include 'footer.php'; ?>




</body>

</html>