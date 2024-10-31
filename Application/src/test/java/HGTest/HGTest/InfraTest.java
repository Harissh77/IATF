package HGTest.HGTest;

import org.junit. Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.system.OutputCaptureExtension;
import org.junit. Ignore;
import static org.junit.Assert.assertEquals;

@ExtendWith(OutputCaptureExtension.class)
public class InfraTest {
	String message = "BrowserStack is the intended message";
	@Test 
	public void testMessage() {
	System.out. println("Inside testMessage()");
	assertEquals(message, "BrowserStack is the intended message");
	}
	@Test 
	public void testMessage1() {
	System.out. println("Inside testMessage1()");
	assertEquals(message, "BrowserStack is the intended message");
	}
}
