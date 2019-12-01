<?php
	include("header.php");
	if(isset($_POST['encrypt'])){
		include('Crypt/RSA.php');
		$key = $_POST['pkey'];
		
		require_once('class_lib.php');
		$obj = new MyEncryption();
		$obj->setPrikey($key);
		$data = $_POST['plain'];
		$data = $obj->group_encrypt("$data");
	}
?>

<section id="divider">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s">Group Encryption</h2>
				<form action="" method="post">
								<input type="hidden" name="sessionid" value="<?php echo $_SESSION[sessionid]; ?>" >
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Text to be encrypted</h4>
						<textarea name="plain" class="form-control"><?php if(isset($_POST['encrypt'])){echo $_POST['plain'];}?></textarea>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Private Key</h4>
						<textarea name="pkey" class="form-control"><?php if(isset($_POST['encrypt'])){echo $key;}?></textarea>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Encrypted text</h4>
						<textarea id="genc" class="form-control" readonly><?php if(isset($_POST['encrypt'])){echo $data;}?></textarea>
						<button onclick="myFunction()"><img src="images/copy.png" height="10px" width="10px" style="border:none" /></button>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s"><br>
						<input name="encrypt" type="submit" class="section-btn btn btn-success smoothScroll" id="submit" value="Encrypt">                           
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<script>
function myFunction() {
  var copyText = document.getElementById("genc");
  copyText.select();
  copyText.setSelectionRange(0, 99999)
  document.execCommand("copy");
  alert("Copied the text");
}
</script>

<?php
	include("footer.php");
?>