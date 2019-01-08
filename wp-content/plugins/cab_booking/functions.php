<?php
function EncHashPassword()
{
	return "Zxasqw#$&*976776#$^&";
}
function CabEncrypt($text)
{
	$password=EncHashPassword();
	return base64_encode(openssl_encrypt($text,"AES-128-ECB",$password));
}
function CabDecrypt($text)
{
	$password=EncHashPassword();
	return openssl_decrypt(base64_decode($text),"AES-128-ECB",$password);
}