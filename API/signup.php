<?php
require "DataBase.php";
$db = new DataBase();

if (isset($_POST['first_name']) && $_POST['last_name']) && $_POST['contact_number']) && $_POST['date_of_birth']) &&
    isset($_POST['office_id']) && $_POST['position']) &&
    isset($_POST['email']) && isset($_POST['psswd_hash'])) {
    if ($db->dbConnect()) {
        if ($db->signUp("employer_info", "user_account_info", $_POST['first_name'], $_POST['last_name'], $_POST['contact_number'], $_POST['date_of_birth'],
            $_POST['office_id'],$_POST['position']
            $_POST['email'],$_POST['psswd_hash']) {
            echo "Sign Up Success";
        } else echo "Sign up Failed";
    } else echo "Error: Database connection";
} else echo "All fields are required";


/*
//This block is to check the functionality using direct injection
// http://localhost/LoginRegister/signup.php?fn=Pradeep&ln=Chandrakumara&cn=%2B94718353384&dob=1990-11-11&oid=1&pos=sorting_officer&e=me@gmail.com&p=uthsu
$first_name = $_GET['fn'];
$last_name = $_GET['ln'];
$contact_number = $_GET['cn'];
$date_of_birth = $_GET['dob'];
$office_id = $_GET['oid'];
$position = $_GET['pos'];
$email = $_GET['e'];
$psswd_hash = $_GET['p'];

echo $first_name;
echo $last_name;
echo $contact_number;
echo $date_of_birth;
echo $office_id;
echo $position;
echo $email;
echo $psswd_hash;



if ($db->dbConnect()) {
    if ($db->signUp("employer_info", "user_account_info", $first_name, $last_name, $contact_number, $date_of_birth,
        $office_id, $position,
        $email, $psswd_hash)) {
        echo "Sign Up Success";
    } else echo "Sign up Failed";
} else echo "Error: Database connection";
*/
?>
