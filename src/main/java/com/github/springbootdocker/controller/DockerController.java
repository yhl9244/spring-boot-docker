package com.github.springbootdocker.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.PostConstruct;
import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * <p>
 * 创建时间为 18:37 2019-04-15
 * 项目名称 spring-boot-docker
 * </p>
 *
 * @author 石少东
 * @version 0.0.1
 * @since 0.0.1
 */
@RestController
public class DockerController {

    @Value("${message}")
    private String message;

    @GetMapping("/docker")
    public String getMessage() {
        return "Meaasges From Docker!:" + message;
    }

    @PostConstruct
    public void print() throws UnknownHostException {
        InetAddress address = InetAddress.getLocalHost();
        System.out.println(message + ":" + address.getHostAddress());
    }


}
