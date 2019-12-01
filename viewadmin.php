<?php
	include("header.php");
	if(!isset($_SESSION["adminid"]))
	{
		echo "<script>window.location='log.php';</script>";
	}
	if(isset($_GET['delid']))
	{
		$sql = "DELETE FROM admin where admin_id='$_GET[delid]'";
		$qsql = mysqli_query($con,$sql);
		if(mysqli_affected_rows($con) ==1)
		{
			echo "<script>alert('Admin record deleted successfully..');</script>";
		}
	}
?>

<section id="divider" >
	<div class="container">
		<h2 class="wow fadeInUp" data-wow-delay="0.4s">View Admin records</h2>
		<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th scope="col">&nbsp;Admin Name</th>
					<th scope="col">&nbsp;Login ID</th>
					<th scope="col">&nbsp;Status</th>
					<th scope="col">&nbsp;Action</th>
				</tr>
			</thead>
			<tbody>  
				<?php
					$sql= "SELECT  * FROM admin";  
					$qsql= mysqli_query($con,$sql);
					while($rs = mysqli_fetch_array($qsql))
					{
						echo "<tr>
							<td>&nbsp;$rs[admin_name]</td>
							<td>&nbsp;$rs[login_id]</td>
							<td>&nbsp$rs[status]</td>
							<td>&nbsp;<a href='admin.php?editid=$rs[admin_id]'>Edit</a> | <a href='viewadmin.php?delid=$rs[admin_id]' onclick='return deleterecord()' >Delete</a></td>
						</tr>";
					}
				?>
			</tbody>  
		</table>
	</div>
</section>

<?php
	include("footer.php");
	include("datatables.php");
?>
<script type="application/javascript">
	function deleterecord()
	{
		if(confirm("Are you sure want to delete this record???") == true)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
</script>