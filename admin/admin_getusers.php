<?php

require_once '../load.php';


//get all Roku Users

if(isset($_GET['allusers'])){
    $users = getAllUsers();



    //send this(all the users or an error message
    echo $users;
}