package kr.golfproject.golf;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.simple.JSONObject;

public class RestTest{
	
    public static void main(String[] argc) throws IOException{
        RestTest restTest=new RestTest();

        JSONObject jObject=new JSONObject();

        jObject.put("Test","123"); //JSON에 값 입력

        String result=restTest.sendJSON(jObject);
        System.out.println("전송 결과 : "+result);
    }
    
    public String sendJSON(JSONObject jObject) throws IOException{
        String inputLine=null;
        StringBuffer stringBuffer=new StringBuffer();

        URL url=new URL("http://127.0.0.1:5000/fileUpload"); //URL객체 생성
            
        HttpURLConnection conn=(HttpURLConnection)url.openConnection(); //url주소를 가지고 Http 커넥션 객체 생성
            
        System.out.println(conn.toString());
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/json");
        conn.setRequestProperty("Accept-Charset", "UTF-8");
        conn.setConnectTimeout(10000);
        conn.setReadTimeout(100000);
            
        //데이터 전송
        BufferedWriter bWriter=new BufferedWriter(new OutputStreamWriter(conn.getOutputStream(),"UTF-8"));
        bWriter.write(jObject.toString());
        bWriter.flush();
 
        //전송된 결과를 읽어옴
        BufferedReader bReader=new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
        while((inputLine=bReader.readLine())!=null){
            stringBuffer.append(inputLine);
        }
        bWriter.close();
        bReader.close();
        conn.disconnect();

        return stringBuffer.toString();
    }//sendJSON()
}//RestTest