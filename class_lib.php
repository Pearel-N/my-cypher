<?php
class MyEncryption
{

    public $pubkey;
    public $privkey;
	
	public function setPubkey($newPub)
	{
		$this->pubkey = $newPub;
	}
	
	public function setPrikey($newPri)
	{
		$this->privkey = $newPri;
	}

    public function encrypt($data)
    {
        if (openssl_public_encrypt($data, $encrypted, $this->pubkey))
            $data = base64_encode($encrypted);
        else
            throw new Exception('Unable to encrypt data. Perhaps it is bigger than the key size?');

        return $data;
    }

    public function decrypt($data)
    {
        if (openssl_private_decrypt(base64_decode($data), $decrypted, $this->privkey))
            $data = $decrypted;
        else
            $data = '';

        return $data;
    }
	
	public function group_encrypt($data)
	{
		if(openssl_private_encrypt($data, $encrypted, $this->privkey))
			$data = base64_encode($encrypted);
		else
			throw new Exception('Unable to encrypt data. Perhaps it is bigger than the key size?');
		return $data;
	}
	
	public function group_decrypt($data)
    {
        if (openssl_public_decrypt(base64_decode($data), $decrypted, $this->pubkey))
            $data = $decrypted;
        else
            $data = '';

        return $data;
    }
}
?>