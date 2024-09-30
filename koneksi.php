<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database_name = "hotel_rpl2";

// $hostname = "localhost" --> alamat server database MySQL.
// $username = "root" --> nama pengguna untuk mengakses database. isi nya default
// $password = "" --> kata sandi untuk mengakses database.. isi nya defaault
// $database_name = "beasiswa" --> nama database yang akan di koneksikan 


//membuat koneksi ke server database MySQL 
$db = mysqli_connect($hostname, $username, $password, $database_name);

// jika db koneksi nya eror
// if ($db->connect_error) {
//     die("error!");
// }
// echo "koneksi berhasil";
?>