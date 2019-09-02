package cn.test.spare;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Comparator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
@WebServlet("/ReadFile_v1")
public class ReadFile_v1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("asdfasdf");
		resp.setHeader("Content-type", "text/html;charset=UTF-8");  
	    resp.setContentType("text/html;charset=utf-8");
	    String path = System.getProperty("catalina.home").substring(0,System.getProperty("catalina.home").lastIndexOf("\\"))+"\\newsFiles\\application";
		System.out.println(path);
		File file = new File(path);
		PrintWriter out = resp.getWriter();
		File[] fs = file.listFiles();

		Arrays.sort(fs,new Comparator< File>(){  
		    public int compare(File f1, File f2) {  
		    long diff = f1.lastModified() - f2.lastModified();  
		    if (diff > 0)  
		      return -1;  
		    else if (diff == 0)  
		      return 0;  
		    else  
		      return 1;  
		     }  
		    public boolean equals(Object obj) {  
		    return true;  
		     }  
		 });
		SimpleDateFormat simpleFormat = new SimpleDateFormat("yyyy-MM-dd");
		JSONArray jsonarray = new JSONArray();
        JSONObject jsonobj0 = new JSONObject();
        
        for (int i = fs.length-1; i >-1; i--) {
        	JSONObject jsonobj  = new JSONObject();
		    Date d=new Date(fs[i].lastModified());
			String dataString=simpleFormat.format(d);
			//第一步：判断文件是不是html文件		
			if (fs[i].getName().endsWith(".htm")) {
				//取出html文件的文件名（即去掉.htm四个字符）
				String achievementsName=fs[i].getName().substring(0,fs[i].getName().length()-4);
				
				//如果是HTML文件，就像jsonobject里面保存相应的数据
				jsonobj.put("title", fs[i].getName());
				String[]  originTitle=fs[i].getName().split("-");
				jsonobj.put("addtime", originTitle[1]);
				for(int j=0;j<fs.length;j++) {	
					//遍历，找出以.files结尾的文件，并取出其文件名，即去掉.files几个字符
					if(fs[j].getName().endsWith(".files")) {
						String achievementsImage = fs[j].getName().substring(0,fs[j].getName().length()-6);
						//System.out.println(achievementsImage);
						//System.out.println(achievementsName);
						//第二步：如果两个文件名相重合
						if(achievementsName.equals(achievementsImage)) {
							//拼接新的path
							String ImagePath=path+"\\"+fs[j].getName();
							//新建文件对象
							File fileImage = new File(ImagePath);
							File FileImage[] = fileImage.listFiles();	
							//新建string对象						
							String[] Image=new String[FileImage.length];
							for(int m = 0; m < FileImage.length; m++) {
								//新建stringbuilder字符串数组，利用其append方法向该数组内添加数据
								StringBuilder ImageName = new StringBuilder("");
								ImageName.append(fs[j].getName());
								ImageName.append("\\");
								ImageName.append(FileImage[m].getName());
								//将stringbuilder字符串数组元素转化为string字符串数组元素
								//这里可以稍微查一下，stringbuilder在处理字符串时效率和安全性更高
								Image[m] =""+ ImageName;
								
							}
							jsonobj.put("img", Image);							
						}
					}									
				}
			}
			jsonarray.add(jsonobj);
		  } 
		  //新建newjsonarray，以及后面的for循环，用于过滤部分空的jsonobject
        JSONArray newjsonarray = new JSONArray();
        for(int n=0;n<jsonarray.size();n++) {
        	if(jsonarray.getJSONObject(n).keySet().size()!=0) {
        		/*JSONObject newjsonobj  = new JSONObject();
        		newjsonobj=jsonarray.getJSONObject(n);*/
        		newjsonarray.add(jsonarray.getJSONObject(n));
        		
        	}
        }
		jsonobj0.put("Application",newjsonarray);
		out.println(newjsonarray);
	}	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
