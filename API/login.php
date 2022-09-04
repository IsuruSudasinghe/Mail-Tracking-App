<?php
require "DataBase.php";
$db = new DataBase();
/*
// use this to check the functionality of this segment using a browser
$email = $_GET['e'];
$psswd_hash = $_GET['p'];
*/

if (isset($_POST['email']) && isset($_POST['psswd_hash'])) {
    if ($db->dbConnect()) {
        if ($db->logIn("user_account_info", $_POST['email'], $_POST['psswd_hash'])) {
            echo "Login Success";
        } else echo "Email or Password is Incorrect";
    } else echo "Error: Database connection";
} else echo "All fields are required";

/*
// use this to check the functionality of this segment using a browser
// http://localhost/LoginRegister/login.php?e=hashmyemail&p=hashmypass
if ($db->dbConnect()) {
    if ($db->logIn("user_account_info", $email, $psswd_hash)) {
        echo "Login Success";
    } else echo "Email or Password is Incorrect";
} else echo "Error: Database connection";
*/
?>

