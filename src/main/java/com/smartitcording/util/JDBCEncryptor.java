package com.smartitcording.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;

public class JDBCEncryptor {

    public static void main(String[] args){
        StandardPBEStringEncryptor enc = new StandardPBEStringEncryptor();
        enc.setPassword("rktwlsrud");

        System.out.println(enc.decrypt("bM2GG3+omi6GyB0YHQmIK3QdEuvoLRyaSKjAtu5hAoGA615STtepP0rWGC36cwR1d8slvOPTjOo="));
        System.out.println(enc.decrypt("N73rATdUqp1ns37Fkm0qsQ=="));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.encrypt(""));
//        System.out.println(enc.decrypt("bM2GG3+omi6GyB0YHQmIK3QdEuvoLRyaSKjAtu5hAoGA615STtepP0rWGC36cwR1d8slvOPTjOo="));


    }

}
