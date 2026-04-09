package hello.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class sayHello {
    @GetMapping("/sayHello")
    public String sayHello() {
        return "Hello 2";
    }
}