<?php include('server.php'); 
session_start();
$id = $_GET['ids'];
$sql = mysqli_query($conn,"SELECT * FROM member WHERE member_id = $id");
$row = mysqli_fetch_array($sql);


$query = "SELECT * FROM product WHERE product_id = $id";
$result = mysqli_query($conn, $query);
$row_product = mysqli_fetch_array($result); 





?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="output.css">
</head>
<body>
<?php include 'header.php'; ?>


<div class=" mb-5">
<div class="p-16">
<div class="p-8 bg-white shadow mt-24 rounded-lg">
  <div class="grid grid-cols-1 md:grid-cols-3">
    <div class="grid grid-rows-2 text-center order-last md:order-first mt-20 md:mt-0">
      <!-- topic -->
    

     
    </div>

    <!-- profile -->
  
    <div class="relative">
      <div class="w-48 h-48 bg-indigo-100 mx-auto rounded-full shadow-2xl absolute inset-x-0 top-0 -mt-24 flex items-center justify-center text-indigo-500">
      <?php 
                //ดึงข้อมูลในตาราง product มาแสดง
                $select1 = mysqli_query($conn, "SELECT member_id FROM `product` WHERE member_id = $id");
                $row1 = mysqli_fetch_array($select1);
                $member = $row['member_id'];
                
					$select5 = mysqli_query($conn, "SELECT `member_name`,`member_image`, `member_id` FROM member WHERE member_id = $id" ) or die('query failed');
					if (mysqli_num_rows($select5) > 0) {
						$row5 = mysqli_fetch_assoc($select5); {
				?>
      <img src="images/<?php echo $row['member_image'] ?>" class=" rounded-full" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd" />
          </img>
      </div>
          <div class="mt-20 text-center border-b pb-12">
            <br>
    <h1 class="text-4xl font-medium text-gray-700"><?php echo $row['member_name'] ?></h1>
    <p class="font-light text-gray-600 mt-3"><?php echo $row['member_email']; ?></p>
    <p class="font-light text-gray-600 mt-3"><?php echo $row['member_mobile']; ?></p>
    </div>
  </div>
    </div>
  </div>
</div>
        </div>
</div>
</div>
<?php
      }
    }
    ?>

</body>
</html>