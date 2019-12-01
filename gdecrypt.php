<?php
	include("header.php");
	if(isset($_POST['decrypt'])){
		include('Crypt/RSA.php');
		$key = $_POST['pkey'];
		$rsa = new Crypt_RSA();
		$rsa->loadKey($key);
		$rsa->setPublicKey($key);
		$Pub = $rsa->getPublicKey();
		
		
		require_once('class_lib.php');
		$obj = new MyEncryption();
		$obj->setPubkey($Pub);
		$data = $_POST['cypher'];
		$data = $obj->group_decrypt("$data");
	}
?>

<section id="divider">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s">Group Decryption</h2>
				<form action="" method="post">
								<input type="hidden" name="sessionid" value="<?php echo $_SESSION[sessionid]; ?>" >
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Encrypted Text</h4>
						<textarea name="cypher" class="form-control"><?php if(isset($_POST['decrypt'])){echo $_POST['cypher'];}?></textarea>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Public Key</h4>
						<textarea name="pkey" class="form-control"><?php if(isset($_POST['decrypt'])){echo $Pub;}?></textarea>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<h4>Decrypted text</h4>
						<textarea class="form-control" readonly><?php if(isset($_POST['decrypt'])){echo $data;}?></textarea>
					</div>
					<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s"><br>
						<input name="decrypt" type="submit" class="section-btn btn btn-success smoothScroll" id="submit" value="Decrypt">                           
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

<?php
	include("footer.php");
?>