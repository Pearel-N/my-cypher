<?php
	include("header.php");
?>

<section id="divider">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s">About</h2>
				<h3 class="wow fadeInUp" data-wow-delay="0.4s">In this website, The encryption is done using the RSA algorithm.<br/> RSA uses a key pair to perform the encryption and decryption on the text.In the key pair,<br/> there are two types of keys; one is public key and the other is the private key.<br/>Encrypting the text using public key offers message private message passing, which means we need to use the public key of the person whome we want to send the encrypted message and that person need to use his/her private key to decrypt the data.<br/><br/>if we use our private key to encrypt the data, we can send the data to a group of people and they need to use our private key to decrypt the data</h3>
			</div>
			<div class="col-md-offset-2 col-md-8 col-sm-12">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s">How to get a key pair?</h2>
				<h3 class="wow fadeInUp" data-wow-delay="0.4s">use the following command to generate the RSA keypair.</h3>
				<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp" data-wow-delay="0.5s" style="text-align:left;">
						<input value="ssh-keygen -t rsa" type="text" class="form-control" id="cmd">
						<button onclick="myFunction()"><img src="images/copy.png" height="10px" width="10px" style="border:none" /></button>
				</div>
			</div>
		</div>
	</div>
</section>

<script>
function myFunction() {
  var copyText = document.getElementById("cmd");
  copyText.select();
  copyText.setSelectionRange(0, 99999)
  document.execCommand("copy");
  alert("Copied the text");
}
</script>

<?php
	include("footer.php");
?>