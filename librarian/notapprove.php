<?php
include "connection.php";
$id=$_GET["id"];
mysqli_query($link,
"update student_registration set status='no' where id=$id" );
?>

<script type="text/javascript">
	window.location="display-student-info.php";
</script>