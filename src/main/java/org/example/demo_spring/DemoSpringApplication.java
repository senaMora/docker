package org.example.demo_spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DemoSpringApplication {

    public static void main(String[] args) throws InterruptedException {
        SpringApplication.run(DemoSpringApplication.class, args);

        System.out.println("Max JVM memory (MB): " + (Runtime.getRuntime().maxMemory() / (1024 * 1024)));

        for (int i = 0; i < 50; i++) {
            System.out.println("Hello from JVM inside Docker! " + i);
            Thread.sleep(2000);
        }
    }

}
