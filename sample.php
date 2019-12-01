<?php
include('Crypt/RSA.php');

	$key = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDeinUy9IH5mnyAn1WmZBLN+yaGQDTTnxl7pR4Br4vwYjnr8AT70VWd8xxKiWJd81dhK0mpLcfNLoOwa9gZjlsbyvshxySCMLYTp4QHuwpusmbiLvtdaT8K73a53RMY40U5jIk4nG+iBtLmOM1svgerkcQapgHeia96L1i3JJcE5aQQYftb7jaQghuWk0PaDUF33mZ1lz6MrAdjCGXiRIpVRxtmcfB7ILLpQruzfDWQHH5LXvepbrcE3Xl/hHUiAHe1pFQjoKgkaF+lt5L1D588NVuIj67GNTiUP/aHCGn8uRzJMvRIYSqBj11c/WLaRXuV4Y2yInzYk8cNlOFP1PbR pearel nazareth@Pearel-PC';
	
	$pkey = '-----BEGIN RSA PRIVATE KEY-----
MIIEowIBAAKCAQEA3op1MvSB+Zp8gJ9VpmQSzfsmhkA0058Ze6UeAa+L8GI56/AE
+9FVnfMcSoliXfNXYStJqS3HzS6DsGvYGY5bG8r7IcckgjC2E6eEB7sKbrJm4i77
XWk/Cu92ud0TGONFOYyJOJxvogbS5jjNbL4Hq5HEGqYB3omvei9YtySXBOWkEGH7
W+42kIIblpND2g1Bd95mdZc+jKwHYwhl4kSKVUcbZnHweyCy6UK7s3w1kBx+S173
qW63BN15f4R1IgB3taRUI6CoJGhfpbeS9Q+fPDVbiI+uxjU4lD/2hwhp/LkcyTL0
SGEqgY9dXP1i2kV7leGNsiJ82JPHDZThT9T20QIDAQABAoIBACTP8I0qRynb9UZt
lQR+P2IVboz8qABtrBB5AtqyiEqOZRhzTs+9FBWZto9Z5Iy4CTdIqtmyef+l9yDC
5i9sDgQt8pbm01I57pSXvE5vEU24cy5tKSWNmGEdtZ0PRe5zAeuAJN7ZednqmQ5+
TPT1Bl3KMg9acKq4Se/DT0CUa+riJuJEP2TPdUg2R+edWzxXrca6qvKcthUuCdwe
TlbSnYh92CjLBAOnGRVz+oMQaba//OVZLNIoaLukpsE03wl38wN4I3i/nj/WKr5B
L+GP0wOxOLzFTswCgJKJkusKSqLDWDdcljYWDF9qZhtc98u8y8nyk/o5j0MUAsLK
IOFQ/AUCgYEA8/Qt9AUHaBpYX7yItRf5fLF7Xjz9l4K0Bh9QMu7m+1NofCBHRxtw
5WeW+GHAX5Frgn1oYQ+eX6vx4PoT2hjEcnmgQRecGUtiqnoweYuCzDKg38gwzRcK
NIkYM1mvo6HhcyV7W7aljvuggj928bLh9MPC2s3zDmuuGQZ9ekwDwJ8CgYEA6YeY
zEF2qUDsc9rcj52GUVDxkv6KkgBa4EWg24dC6d8l5ctSer5sdjE9cFyxQxaGZGgp
TqogLtMLClIcmsq6dlwIccP+KJybkoq3t6fyBUaj8MJgc0fxpLx+Uh9EkZ+VWtiq
H1eo5POyUhy4c+x1LXKXptpTVjrCEtdAf6hQ4o8CgYEA6/cxB8pheqmY96lmVjxF
Xv5RRTsbU5TiStW4/jslAs6PzxhtuXLqhYrodYIf0JDZe9OPxeqUlxe7E5Dw6NFy
GwRYJP4QSEspuZoND1QJhTgnca2yvn3dqik9VlYW1OD9MCJ+Kp0FkMMFY1a911Xe
x6Ee9gOlaTpwoNYtQsEKFCMCgYAEC1wjFXMnpT8zFnRBbHn6CIvWfuAJfUYVoj8R
7jrDcCDo5OeNxqR8O4gT3RcY0VgMfx1QBnQ+O1tyl091gtNN33Qp/Dn3nBa5p/tc
i+UOIFYQgl1HQdS2hKkvZOk8GGZux1fS6SK8rFfHQkYTg+HXoqdrtVZCJQxdZSrx
ywlzkwKBgBMpRsVnTXSNkcRplAT2vaBosIhdze2SDSc6tewjxzXFESYq3NXYIF3x
iYF4VwRPA+AApSSg6uhaG+pf3kpRYZWlbLVmFc/47tP14sR5NbgbCgTIpcBkDGSu
3QxLdSrqGzv8PDjXX5OvOJPWDzLswIj8M4Nd9kYHMqtwgvHR8OcA
-----END RSA PRIVATE KEY-----';

//	ltrim($pkey);

	$rsa = new Crypt_RSA();
	$rsa->loadKey($key);
	$rsa->setPublicKey($key);

	$Pub = $rsa->getPublicKey();
	
	echo "<br><br><br>";
	echo $Pub;
	echo "<br><br><br>";
	
	$rsa->loadKey($pkey);
	$rsa->setPrivateKey($pkey);

	$Pri = $rsa->getPrivateKey();
	echo $pkey;
	echo $Pri;
	


	require_once('class_lib.php');

	$obj = new MyEncryption();
	$obj->setPubkey($Pub);
	$data = "hello I'm Pearel";
	$data = $obj->encrypt("$data");
	echo "<br><br><br>";
	echo $data;
	echo "<br><br><br>";
	
	
	$obj->setPrikey($pkey);
	$dec = $obj->decrypt("$data");
	echo $dec;
?>