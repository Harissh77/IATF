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
        assertThat(capture.toString()).contains("IATF-Instance");
    }
    
    @Test
    void publicIPCheck(CapturedOutput capture) throws Exception {
        App.main(new String[]{});
        assertThat(capture.toString()).isNotEmpty();
    }
    
    @Test
    void availabilityZoneTest(CapturedOutput capture) throws Exception {
        App.availabilityZoneCheck(new String[]{});
        assertThat(capture.toString()).contains("ap-south-1a");
    }
    
    @Test
    void instanceTypeTest(CapturedOutput capture) throws Exception {
        App.instanceTypeCheck(new String[]{});
        assertThat(capture.toString()).contains("t2.micro");
    }
    
    @Test
    void instanceStateTest(CapturedOutput capture) throws Exception {
        App.instanceStateCheck(new String[]{});
        assertThat(capture.toString()).contains("running");
    }
    
    @Test
    void subnetIDTest(CapturedOutput capture) throws Exception {
        App.subnetIDCheck(new String[]{});
        assertThat(capture.toString()).contains("subnet-");
    }
    
    @Test
    void tenancyTest(CapturedOutput capture) throws Exception {
        App.tenancyCheck(new String[]{});
        assertThat(capture.toString()).contains("default");
    }
    
    @Test
    void checkDatabase(CapturedOutput capture) throws Exception {
        App.DBApp(new String[]{});
        assertThat(capture.toString()).isEqualToIgnoringNewLines("Oracle DB");
    }
}
