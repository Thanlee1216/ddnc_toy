package com.ddnc.toy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(basePackages = "com.ddnc.toy.repository")
@SpringBootApplication
public class ToyApplication {

    public static void main(String[] args) {

        SpringApplication.run(ToyApplication.class, args);

    }

}
