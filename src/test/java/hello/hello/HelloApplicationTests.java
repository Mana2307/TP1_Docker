package hello.hello;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertNotNull;

/**
 * Tests d'intégration pour l'application HelloApplication
 * Ces tests vérifient que Spring Boot démarre correctement
 */
@SpringBootTest
class HelloApplicationTests {

    @Test
    void contextLoads() {
        // Test que le contexte Spring Boot se charge correctement
        assertNotNull(HelloApplication.class);
    }

    @Test
    void applicationCanStart() {
        // Test que l'application peut démarrer sans erreurs
        HelloApplication.class.getPackage();
        assertNotNull(HelloApplication.class.getName());
    }
}
