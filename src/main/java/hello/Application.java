package hello;

import com.utils.CassandraLink;

@SpringBootApplication
@RestController
public class Application {

	@RequestMapping("/")
	public String home() {
		return "Hello Docker World";
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
		//CassandraLink.link();
	}

}