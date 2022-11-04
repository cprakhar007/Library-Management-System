package org.library.springlibrary.service.impl;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.library.springlibrary.service.PasswordEncryptionService;
import org.springframework.stereotype.Service;

@Service
public class SHA256PasswordEncryptionServiceImpl implements PasswordEncryptionService{
	
	private byte[] getSHA(String input) throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		return md.digest(input.getBytes(StandardCharsets.UTF_8));
	}
	
	private String toHexString(byte[] hash) {
		BigInteger number = new BigInteger(1, hash);
		StringBuilder hexString = new StringBuilder(number.toString(16));
		while (hexString.length() < 32) {
			hexString.insert(0, '0');
		}
		return hexString.toString();
	}
	
	@Override
	public String encryptPassword(char[] password) {
		byte[] hash = null;
		try {
			hash = getSHA(String.valueOf(password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return toHexString(hash);
	}
}
