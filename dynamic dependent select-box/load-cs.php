<?php

$conn = mysqli_connect("localhost", "root", "", "test") or die("connection failed");

if($_POST['type'] == "") {
    $sql = "SELECT * FROM country_db";

    $result = mysqli_query($conn, $sql) or die("Query failed");
    
    $str = "";
    
    while($row = mysqli_fetch_assoc($result)) {
        $str .= "<option value='{$row['cid']}'>{$row['cname']}</option>";
    }
    
} else if($_POST['type'] == "stateData") {
    $sql = "SELECT * FROM state_db WHERE country = {$_POST['id']}";

    $result = mysqli_query($conn, $sql) or die("Query failed");
    
    $str = "";
    
    while($row = mysqli_fetch_assoc($result)) {
        $str .= "<option value='{$row['sid']}'>{$row['sname']}</option>";
    }
}



echo $str;





?>