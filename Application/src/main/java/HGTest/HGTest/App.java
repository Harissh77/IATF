package HGTest.HGTest;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.File;
import java.io.IOException;


public class App {
	

    public static void main(String[] args) throws Exception {

		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String name = jsonNode.get("instance_name").get("value").asText();               
        System.out.println(name);
    }
    public static void IPCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("public_ip").get("value").asText();               
        System.out.println(ip);
		}
		
    public static void availabilityZoneCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("availability_zone").get("value").asText();               
        System.out.println(ip);
		}
		
	    public static void instanceTypeCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("instance_type").get("value").asText();               
        System.out.println(ip);
		}
		
	   public static void instanceStateCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("instance_state").get("value").asText();               
        System.out.println(ip);
		}
		

		
	public static void tenancyCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("tenancy").get("value").asText();               
        System.out.println(ip);
		}
		
		public static void subnetIDCheck(String[] args) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode = objectMapper.readTree(new File("src/test/resources/payload.json"));
		String ip = jsonNode.get("subnet_id").get("value").asText();               
        System.out.println(ip);
		}
		
    public static void DBApp(String[] args) throws Exception {
        System.out.println("Oracle DB");
    }
}
