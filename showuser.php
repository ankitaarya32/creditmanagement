<?php
include "connect.php";
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>credit management</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<form method="POST" action="selectuser.php" id="AllUserForm">
    <div class="container-fluid" style="overflow-x:auto">
        <table id="Allusers">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Info</th>
            </tr>
            <?php
            $sql = "SELECT * FROM `user`";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_array($result)) { ?>
                <tr>
                    <td><?php echo $row["name"]; ?></td>
                    <td><?php echo $row["email"]; ?></td>
                    <td align="center"><a href="selectuser.php?a= <?php echo $row['id'] ?>" class="btn btn-primary"
                                          href="selectuser.php" role="button" target="_self">View User</a>
                    </td>
                </tr>
                <?php
            } ?>
        </table>
    </div>

</form>
<br>
<br>
<div class="text-center">
    <a class="btn btn-primary" href="index.html" role="button" target="_self">HomePage</a>
</div>
</body>
</html>