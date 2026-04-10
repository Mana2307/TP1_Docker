error id: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java
file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java
### com.thoughtworks.qdox.parser.ParseException: syntax error @[69,1]

error in qdox parser
file content:
```java
offset: 2425
uri: file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java
text:
```scala
package hello.hello;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.DisplayName;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
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
        assertNotNull(result);
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
@@
```

```



#### Error stacktrace:

```
com.thoughtworks.qdox.parser.impl.Parser.yyerror(Parser.java:2025)
	com.thoughtworks.qdox.parser.impl.Parser.yyparse(Parser.java:2147)
	com.thoughtworks.qdox.parser.impl.Parser.parse(Parser.java:2006)
	com.thoughtworks.qdox.library.SourceLibrary.parse(SourceLibrary.java:232)
	com.thoughtworks.qdox.library.SourceLibrary.parse(SourceLibrary.java:190)
	com.thoughtworks.qdox.library.SourceLibrary.addSource(SourceLibrary.java:94)
	com.thoughtworks.qdox.library.SourceLibrary.addSource(SourceLibrary.java:89)
	com.thoughtworks.qdox.library.SortedClassLibraryBuilder.addSource(SortedClassLibraryBuilder.java:162)
	com.thoughtworks.qdox.JavaProjectBuilder.addSource(JavaProjectBuilder.java:174)
	scala.meta.internal.mtags.JavaMtags.indexRoot(JavaMtags.scala:49)
	scala.meta.internal.metals.SemanticdbDefinition$.foreachWithReturnMtags(SemanticdbDefinition.scala:99)
	scala.meta.internal.metals.Indexer.indexSourceFile(Indexer.scala:560)
	scala.meta.internal.metals.Indexer.$anonfun$reindexWorkspaceSources$3(Indexer.scala:691)
	scala.meta.internal.metals.Indexer.$anonfun$reindexWorkspaceSources$3$adapted(Indexer.scala:688)
	scala.collection.IterableOnceOps.foreach(IterableOnce.scala:630)
	scala.collection.IterableOnceOps.foreach$(IterableOnce.scala:628)
	scala.collection.AbstractIterator.foreach(Iterator.scala:1313)
	scala.meta.internal.metals.Indexer.reindexWorkspaceSources(Indexer.scala:688)
	scala.meta.internal.metals.MetalsLspService.$anonfun$onChange$2(MetalsLspService.scala:940)
	scala.runtime.java8.JFunction0$mcV$sp.apply(JFunction0$mcV$sp.scala:18)
	scala.concurrent.Future$.$anonfun$apply$1(Future.scala:691)
	scala.concurrent.impl.Promise$Transformation.run(Promise.scala:500)
	java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1090)
	java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:614)
	java.base/java.lang.Thread.run(Thread.java:1474)
```
#### Short summary: 

QDox parse error in file:///C:/Users/Manou/Documents/Inge/INGE2/Docker/TP1_Docker/src/test/java/hello/hello/sayHelloTest.java