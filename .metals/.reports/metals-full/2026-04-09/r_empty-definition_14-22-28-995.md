error id: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/main/java/hello/hello/sayHello.java:org/springframework/web/bind/annotation/RestController#
file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/main/java/hello/hello/sayHello.java
empty definition using pc, found symbol in pc: org/springframework/web/bind/annotation/RestController#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 128
uri: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/main/java/hello/hello/sayHello.java
text:
```scala
package hello.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.@@RestController;

@RestController
public class sayHello {
    @GetMapping("/sayHello")
    public String sayHello() {
        return "Hello 2";
    }
}
```


#### Short summary: 

empty definition using pc, found symbol in pc: org/springframework/web/bind/annotation/RestController#