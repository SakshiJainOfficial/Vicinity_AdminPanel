
package com.vicinity_AdminPanel.util;

import java.util.Properties;

public class JavaMailUtil {
    public static void sendMail(String recepient){
        Properties properties=new Properties();
    properties.put("mail.smpt.auth","true");
    properties.put("mail.smtp.starttls.enable","true");
    properties.put("mail.smtp.host","smtp.gmail.com");
    properties.put("mail.smtp.port","587");
    
    String myAccountEmail="jainsakshi0826@gmail.com";
    String password="sakshi123@#";
    }
}
