package hello.hello;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Tests unitaires pour le contrôleur sayHello
 * Ces tests vérifient que la méthode sayHello retourne la bonne valeur
 */
@DisplayName("Tests du contrôleur sayHello")
class sayHelloTest {

    @Test
    @DisplayName("Test que sayHello retourne 'Hello 2'")
    void testSayHelloEndpoint() {
        // Arrange
        sayHello controller = new sayHello();
        String expected = "Hello 2";
        
        // Act
        String actual = controller.sayHello();
        
        // Assert
        assertEquals(expected, actual);
    }

    @Test
    @DisplayName("Test que la réponse n'est pas null")
    void testSayHelloIsNotNull() {
        // Arrange
        sayHello controller = new sayHello();
        
        // Act
        String result = controller.sayHello();
        
        // Assert
        assertNotNull(result);
    }

    @Test
    @DisplayName("Test que la réponse n'est pas vide")
    void testSayHelloIsNotEmpty() {
        // Arrange
        sayHello controller = new sayHello();
        
        // Act
        String result = controller.sayHello();
        
        // Assert
        assertFalse(result.isEmpty());
    }

    @Test
    @DisplayName("Test que la réponse commence par 'Hello'")
    void testSayHelloStartsWithHello() {
        // Arrange
        sayHello controller = new sayHello();
        
        // Act
        String result = controller.sayHello();
        
        // Assert
        assertTrue(result.startsWith("Hello"));
    }
}
