<html><?php
	$titel = "wubi";
	$cont = "ruwebvo";
	$tag = "vnue";
	error_reporting(E_ALL);
	ini_set('display_errors','1');
	require_once('class_query.php');
	//$insert->insert_posts();
	//$insert->insert_posts($titel,$cont,$tag);
	$everything = $query->every_post();
	while($row = mysqli_fetch_assoc($everything)){
		printf ("%s (%s)\n", $row["title"], $row["content"]);
	}
?>
</html>