package io.github.joyoungc.admin.common;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.web.client.RestTemplate;

import io.github.joyoungc.chatbot.model.MessageRequest;
import io.github.joyoungc.chatbot.model.MessageResponse;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringRunner.class)
@ContextConfiguration(locations = { "classpath:test/config/spring/test-application-context.xml" })
public class RestTemplateTest {
	
	@Autowired
	RestTemplate basicAuthRestTemplate;
	
	@Value("${watson.conversation.url}")
	String watsonUrl;
	
	@Test
	public void watsonConversationApiTest() {
		
		String workspaceId = "5d6ce777-6bb3-45f1-97ba-33e0db08abc1";
		String url = watsonUrl + "/v1/workspaces/" + workspaceId + "/message?version=2017-05-26";
		
		MessageRequest requestMessage = new MessageRequest();
		requestMessage.setInput(new MessageRequest.MessageInput("꽃다발 있어"));
		
		HttpEntity<MessageRequest> request = new HttpEntity<MessageRequest>(requestMessage);
		
		ResponseEntity<MessageResponse> response = basicAuthRestTemplate.exchange(url, HttpMethod.POST, request,
				MessageResponse.class);
		
		log.debug("response.getBody() : {}", response.getBody());
		
	}

}
