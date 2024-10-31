package HGTest.HGTest;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.boot.test.system.CapturedOutput;
import org.springframework.boot.test.system.OutputCaptureExtension;

import static org.assertj.core.api.Assertions.assertThat;

@ExtendWith(OutputCaptureExtension.class)
public class AppTest {

    @Test
    void checkInstace(CapturedOutput capture) throws Exception {
        App.main(new String[]{});
        assertThat(capture.toString()).isEqualToIgnoringNewLines("Red Hat Linux");
    }
    
    @Test
    void checkDatabase(CapturedOutput capture) throws Exception {
        App.DBApp(new String[]{});
        assertThat(capture.toString()).isEqualToIgnoringNewLines("Oracle DB");
    }
}
