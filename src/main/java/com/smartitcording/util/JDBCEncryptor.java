package com.smartitcording.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class JDBCEncryptor {

    public static void main(String[] args){
        StandardPBEStringEncryptor enc = new StandardPBEStringEncryptor();
        enc.setPassword("rktwlsrud");

//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));


    }

}
