/*
  @author simon@grsl.co.uk
  @description Eventually it will be an app for listing books on various auction websites.
*/

<?php

phpinfo();
exit;

$hostname = "localhost";
$username = "root";
$password = "root";
$db = "bookCellar";

$dbconnect = mysqli_connect($hostname,$username,$password,$db);

if ($dbconnect->connect_error) {
    die("Database connection failed: " . $dbconnect->connect_error);
}

?>

<html>
    <head>
    </head>
    <body>
        <p>
        First paragraph.
        </p>
        <form enctype
    </body>
</html>
