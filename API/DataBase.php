<?php
require "DataBaseConfig.php";

class DataBase
{
    public $connect;
    public $data;
    private $sql;
    protected $servername;
    protected $username;
    protected $password;
    protected $databasename;

    public function __construct()
    {
        $this->connect = null;
        $this->data = null;
        $this->sql = null;
        $dbc = new DataBaseConfig();
        $this->servername = $dbc->servername;
        $this->username = $dbc->username;
        $this->password = $dbc->password;
        $this->databasename = $dbc->databasename;
    }

    function dbConnect()
    {
        $this->connect = mysqli_connect($this->servername, $this->username, $this->password, $this->databasename);
        return $this->connect;
    }

    function prepareData($data)
    {
        return mysqli_real_escape_string($this->connect, stripslashes(htmlspecialchars($data)));
    }

    function logIn($table, $email, $psswd_hash)
    {
        $email = $this->prepareData($email);
        $psswd_hash = $this->prepareData($psswd_hash);
        $this->sql = "select * from " . $table . " where email = '" . $email . "'";
        $result = mysqli_query($this->connect, $this->sql);
        $row = mysqli_fetch_assoc($result);
        if (mysqli_num_rows($result) != 0) {
            $dbemail = $row['email'];
            $dbpsswd_hash = $row['psswd_hash'];
            
            if ($dbemail == $email && password_verify($psswd_hash, $dbpsswd_hash)) {
                $login = true;
            } else $login = false;
            
            /*
            // use this to check the functionality of this segment using a browser
            if ($dbemail == $email && $dbpsswd_hash == $psswd_hash) {
                $login = true;
            } else $login = false;
            */
        } else $login = false;

        return $login;
    }

    function signUp($table1, $table2, $first_name, $last_name, $contact_number, $date_of_birth,
                    $office_id, $position, $email, $psswd_hash)
    {
        $first_name = $this->prepareData($first_name);
        $last_name = $this->prepareData($last_name);
        $contact_number = $this->prepareData($contact_number);
        $date_of_birth = $this->prepareData($date_of_birth);
        $office_id = $this->prepareData($office_id);
        $position = $this->prepareData($position);
        $email = $this->prepareData($email);
        $psswd_hash = $this->prepareData($psswd_hash);
        $psswd_hash = password_hash($psswd_hash, PASSWORD_DEFAULT);

        echo $date_of_birth;
        
        $this->sql =
            "INSERT INTO " . $table1 . " (office_id, first_name, last_name, date_of_birth, contact_number, position) 
             VALUES ('" . $office_id . "','" . $first_name . "','" . $last_name . "','" . $date_of_birth . "','" . $contact_number . "','" . $position . "')";
        if (mysqli_query($this->connect, $this->sql)) {
            $this->sql = "select employer_id from " . $table1 . " order by employer_id desc limit 1";
            $result = mysqli_query($this->connect, $this->sql);
            $row = mysqli_fetch_assoc($result);
            $employer_id = $this->prepareData($row['employer_id']);
            $this->sql =
            "INSERT INTO " . $table2 . " (employer_id, email, psswd_hash) 
             VALUES ('" . $employer_id . "','" . $email . "','" . $psswd_hash . "')";
            if (mysqli_query($this->connect, $this->sql)){
                return true;
            }
        } else return false;
    }

}

?>
