package demoinfo.webservice.cxf;

import javax.jws.WebService;  
@WebService  
public interface HelloWebService {  
    public String sayHello(String name);  
} 
