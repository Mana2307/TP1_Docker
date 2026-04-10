error id: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java:org/springframework/boot/test/autoconfigure/web/servlet/WebMvcTest#
file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java
empty definition using pc, found symbol in pc: org/springframework/boot/test/autoconfigure/web/servlet/WebMvcTest#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 230
uri: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java
text:
```scala
package hello.hello;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.@@WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.junit.jupiter.api.Assertions.*;

/**
 * Tests unitaires pour le contrôleur sayHello
 * Ces tests vérifient que la méthode sayHello fonctionne correctement
 */
@DisplayName("Tests du contrôleur sayHello")
@WebMvcTest(sayHello.class)
class sayHelloTest {

    @Autowired
    private MockMvc mockMvc;

    @Test
    @DisplayName("Test que sayHello retourne 'Hello 2'")
    void testSayHelloEndpoint() throws Exception {
        // Act & Assert - Vérifie le contenu et le statut
        mockMvc.perform(get("/sayHello"))
                .andExpect(status().isOk())
                .andExpect(content().string("Hello 2"));
    }

    @Test
    @DisplayName("Test que la réponse n'est pas null")
    void testSayHelloIsNotNull() throws Exception {
        // Act & Assert - Vérifie que la réponse existe
        mockMvc.perform(get("/sayHello"))
                .andExpect(status().isOk())
                .andExpect(result -> assertNotNull(result.getResponse().getContentAsString()));
    }

    @Test
    @DisplayName("Test que la réponse n'est pas vide")
    void testSayHelloIsNotEmpty() throws Exception {
        // Act & Assert - Vérifie que la réponse n'est pas vide
        mockMvc.perform(get("/sayHello"))
                .andExpect(status().isOk())
                .andExpect(result -> {
                    String content = result.getResponse().getContentAsString();
                    assertNotNull(content);
                    assertTrue(!content.isEmpty());
                });
    }

    @Test
    @DisplayName("Test que la réponse commence par 'Hello'")
    void testSayHelloStartsWithHello() throws Exception {
        // Act & Assert - Vérifie que la réponse commence par 'Hello'
        mockMvc.perform(get("/sayHello"))
                .andExpect(status().isOk())
                .andExpect(result -> {
                    String content = result.getResponse().getContentAsString();
                    assertTrue(content.startsWith("Hello"));
                });
    }
}

```


#### Short summary: 

empty definition using pc, found symbol in pc: org/springframework/boot/test/autoconfigure/web/servlet/WebMvcTest#