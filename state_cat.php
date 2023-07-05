<?php 
// $sql = "SELECT SUM(menu_price) AS menu_price FROM statistic";
$sql1 = "SELECT COUNT(*) as order_id FROM statistic";
$sql2 =  "SELECT * FROM statistic WHERE category_name = 'เสื้อผ้า'";
$sql3 =  "SELECT * FROM statistic WHERE category_name = 'โทรศัพท์'";
$sql4 =  "SELECT * FROM statistic WHERE category_name = 'บ้านและสวน'";
$sql5 =  "SELECT * FROM statistic WHERE category_name = 'พระเครื่อง'";
$sql6 =  "SELECT * FROM statistic WHERE category_name = 'นาฬิกา'";
$sql7 =  "SELECT * FROM statistic WHERE category_name = 'รองเท้า'";
$sql8 =  "SELECT * FROM statistic WHERE category_name = 'กล้อง'";
$sql9 =  "SELECT * FROM statistic WHERE category_name = 'กระเป๋า'";
$sql10 =  "SELECT * FROM statistic WHERE category_name = 'ของใช้ในครัว'";
$sql11 =  "SELECT * FROM statistic WHERE category_name = 'เครื่องใช้ไฟฟ้า'";
$sql12 =  "SELECT * FROM statistic WHERE category_name = 'หนังสือ'";
$sql13 =  "SELECT * FROM statistic WHERE category_name = 'เครื่องสำอาง'";
$sql14 =  "SELECT * FROM statistic WHERE category_name = 'อะไหล่รถ'";
$sql15 =  "SELECT * FROM statistic WHERE category_name = 'กีฬา'";
$sql16 =  "SELECT * FROM statistic WHERE category_name = 'อุปกรณ์สัตว์เลี้ยง'";
$sql17 =  "SELECT * FROM statistic WHERE category_name = 'อุปกรณ์เครื่องเขียน'";
$sql18 =  "SELECT * FROM statistic WHERE category_name = 'ของใช้ทารก'";
$sql19 =  "SELECT * FROM statistic WHERE category_name = 'เครื่องประดับ'";


$sql88 = "SELECT category_name, COUNT(*) as count FROM statistic GROUP BY category_name HAVING count = (SELECT MAX(count) FROM (SELECT COUNT(*) as count FROM statistic GROUP BY category_name) as temp)";
$result88 = mysqli_query($conn, $sql88);
$t_cmenu = [];
$t_nmenu = [];
// แสดงผลลัพธ์
if (mysqli_num_rows($result88) > 0) {
  while($row = mysqli_fetch_assoc($result88)) {
    $t_nmenu = $row["category_name"] ;
    $t_cmenu = $row["count"];
  }
}

// ส่งคำสั่ง SQL ไปยังฐานข้อมูล MySQL
// $result = mysqli_query($conn, $sql);
$result1 = mysqli_query($conn, $sql1);
$result2 = mysqli_query($conn, $sql2);
$result3 = mysqli_query($conn, $sql3);
$result4 = mysqli_query($conn, $sql4);
$result5 = mysqli_query($conn, $sql5);
$result6 = mysqli_query($conn, $sql6);
$result7 = mysqli_query($conn, $sql7);
$result8 = mysqli_query($conn, $sql8);
$result9 = mysqli_query($conn, $sql9);
$result10 = mysqli_query($conn, $sql10);
$result11 = mysqli_query($conn, $sql11);
$result12 = mysqli_query($conn, $sql12);
$result13 = mysqli_query($conn, $sql13);
$result14 = mysqli_query($conn, $sql14);
$result15 = mysqli_query($conn, $sql15);
$result16 = mysqli_query($conn, $sql16);
$result17 = mysqli_query($conn, $sql17);
$result18 = mysqli_query($conn, $sql18);
$result19 = mysqli_query($conn, $sql19);
// ดึงผลลัพธ์ออกมาในรูปแบบของอาร์เรย์
// $row = mysqli_fetch_array($result);
$row1 = mysqli_fetch_array($result1);
$count = mysqli_num_rows($result2);
$count1 = mysqli_num_rows($result3);
$count2 = mysqli_num_rows($result4);
$count3 = mysqli_num_rows($result5);
$count4 = mysqli_num_rows($result6);
$count5 = mysqli_num_rows($result7);
$count6 = mysqli_num_rows($result8);
$count7 = mysqli_num_rows($result9);
$count8 = mysqli_num_rows($result10);
$count9 = mysqli_num_rows($result11);
$count10 = mysqli_num_rows($result12);
$count11 = mysqli_num_rows($result13);
$count12 = mysqli_num_rows($result14);
$count13 = mysqli_num_rows($result15);
$count14 = mysqli_num_rows($result16);
$count15 = mysqli_num_rows($result17);
$count16 = mysqli_num_rows($result18);
$count17 = mysqli_num_rows($result19);
?>