package com.smartitcording.util;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;


public class EncTestProgram {
    public static void main(String[] args) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        
        String strTest = "0123456789abcdef!";
//        String strTest = "가나다라마바사abcd012345#"; 
        
        //MD5 테스트
        String strMD5 = EncryptUtil.getMD5(strTest);        
        System.out.println("[strMD5]=>getMD5()\n"+strMD5);            
        String strMD5_2 = EncryptUtil.getEncryptMD5(strTest);
        System.out.println("[strMD5]=>getEncryptMD5()\n"+strMD5_2);
        System.out.println("비교=> "+strMD5.equals(strMD5_2));        
        
        System.out.println("============================================");
        
        //SHA-256 테스트
        String strSHA = EncryptUtil.getSHA256(strTest);
        System.out.println("[strSHA]=>getSHA256()\n"+strSHA);
        String strSHA2 = EncryptUtil.getEncryptSHA256(strTest);
        System.out.println("[strSHA]=>getEncryptSHA256()\n"+strSHA2);
        System.out.println("비교=> "+strSHA.equals(strSHA2));
        
    }
}
