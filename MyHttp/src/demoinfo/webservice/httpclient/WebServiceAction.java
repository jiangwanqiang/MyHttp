package demoinfo.webservice.httpclient;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import com.opensymphony.xwork2.ActionSupport;

public class WebServiceAction  extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String result;
	private String number;
	
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}

	@SuppressWarnings("deprecation")
	public String execute(){
		try {  
			final String SERVER_URL = "http://webservice.webxml.com.cn/WebServices/MobileCodeWS.asmx/getMobileCodeInfo"; // 定义需要获取的内容来源地址  
			HttpPost request = new HttpPost(SERVER_URL);    	//构建HttpPost对象
			List<BasicNameValuePair> params = new ArrayList<BasicNameValuePair>();  //键值对List
			params.add(new BasicNameValuePair("mobileCode", number));  //（注意这里的号码必须大于6位）  
			params.add(new BasicNameValuePair("userId", ""));   
			request.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));   //将传入的参数转换为UTF-8编码，封装到request
			HttpResponse httpResponse = new DefaultHttpClient().execute(request);    //提交HttpClient请求
			if (httpResponse.getStatusLine().getStatusCode() != 404)  
			{  
				result = EntityUtils.toString(httpResponse.getEntity());  	//获取返回值
				if("<h1>Service Unavailable</h1>".equals(result)){
					result="此电话号码错误";
				}
			}  
		} catch (Exception e) {  
			result =  "此电话号码错误";
			e.printStackTrace();  
		}  
		return SUCCESS;
	}

}
