<?php include('dbcon.php');?>
<?php
if(isset($_GET['vkey'])) 
{
    $mysqli = NEW MySQLi ('localhost','root','','lms4');
    //Process Verification
    $vkey = $_GET['vkey'];
    $resultSet = $mysqli->query("SELECT verified,vkey 
    FROM member WHERE verified = 0 AND vkey='$vkey' LIMIT 1");

    if ($resultSet->num_rows == 1 )
    {
        $update =$mysqli->query("UPDATE member SET verified = 1
         WHERE vkey ='$vkey' LIMIT 1 ");
    
        if ($update) 
        {
            header("location:verify_success.html");
            //echo "Your account has been verified.You may now login.";
        }
        else
        {
            echo $mysqli->error;
        }
    }
    else
    {
        echo "Email already verified";
    }
}
else
{
    die("Something went wrong");
}
?>
<html>
<head>
<link href ="" rel="" type="" />
</head>
<body>
</body>
</html>