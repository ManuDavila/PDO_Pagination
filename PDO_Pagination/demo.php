<?php
require "PDO_Pagination.php";

/* Config Connection */
$root = 'root';
$password = 'password';
$host = 'localhost';
$dbname = 'dbname';

$connection = new PDO("mysql:host=$host;dbname=$dbname;", $root, $password);
$pagination = new PDO_Pagination($connection);

$search = null;
if(isset($_REQUEST["search"]) && $_REQUEST["search"] != "")
{
$search = htmlspecialchars($_REQUEST["search"]);
$pagination->param = "&search=$search";
$pagination->rowCount("SELECT * FROM products WHERE category LIKE '%$search%' OR description LIKE '%$search%' OR name LIKE '%$search%'");
$pagination->config(3, 5);
$sql = "SELECT * FROM products WHERE category LIKE '%$search%' OR description LIKE '%$search%' OR name LIKE '%$search%' ORDER BY id_product ASC LIMIT $pagination->start_row, $pagination->max_rows";
$query = $connection->prepare($sql);
$query->execute();
$model = array();
while($rows = $query->fetch())
{
    $model[] = $rows;
}
}
else
{
$pagination->rowCount("SELECT * FROM products");
$pagination->config(3, 5);
$sql = "SELECT * FROM products ORDER BY id_product ASC LIMIT $pagination->start_row, $pagination->max_rows";
$query = $connection->prepare($sql);
$query->execute();
$model = array();
while($rows = $query->fetch())
{
    $model[] = $rows;
}
}
?>
<!DOCTYPE HTML>
<html>
    <head>
    <meta charset="UTF-8">
    <title>PDO Pagination</title>
    </head>
    <body>
<h1>PDO Pagination</h1>
<form method="POST" action="<?php echo $_SERVER["PHP_SELF"] ?>">
Search: 
<input type="text" name="search" placeholder="Search" value="<?php echo $search ?>">
<input type="submit" value="Search">
</form>
<br><br>
    <center>
<table cellpadding="10" cellmargin="5" border="1">
    <tr>
        <th>id_product</th>
        <th>name</th>
        <th>description</th>
        <th>category</th>
        <th>price</th>
    </tr>
    <?php
    foreach($model as $row)
    {
        echo "<tr>";
        echo "<td>".$row['id_product']."</td>";
        echo "<td>".$row['name']."</td>";
        echo "<td>".$row['description']."</td>";
        echo "<td>".$row['category']."</td>";
        echo "<td>".$row['price']."</td>";
        echo "</tr>";
    }
    ?>
</table>
        <br>
        <br>
        <style>
            /* CSS */
            .btn
            {
              text-decoration: none;
              color: #FFFFFF;
              padding-left: 10px;
              padding-right: 10px;
              margin-left: 1px;
              margin-right: 1px;
              border-radius: 3px;
              background: #7F83AD;
            }
            
            .btn:hover
            {
                background: #474C80;
            }
            .active
            {
                background: #E7814A;
            }
            /* CSS */
        </style>
<div>
<?php
$pagination->pages("btn");
?>
</div>
    </center>
    <br>
    <br>
    <br>
    <br>
    </body>
</html>