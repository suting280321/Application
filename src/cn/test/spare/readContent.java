package cn.test.spare;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.FileReader; 
/**
 * Servlet implementation class readContent
 */
@WebServlet("/readContent")
public class readContent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public readContent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String filepath = System.getProperty("catalina.home").substring(0,System.getProperty("catalina.home").lastIndexOf("\\"))+"\\newsFiles\\application\\";
		String path = filepath+request.getParameter("path");
		System.out.println(path);
		A1 a1 = new A1();
		request.setAttribute("msg", a1.read(path));
		request.setAttribute("path", path);
//		System.out.println(path.substring(0,path.indexOf(".")));
		//request.setAttribute("str", a1.read(path));
		/*a1.read(path);*/
		/*String Name=request.getParameter("path").substring(0,10);*/
		/*request.setAttribute("name",Name);*/
		
		request.getRequestDispatcher("/Achivements.jsp").forward(request, response);
		
				/*HttpSession session = request.getSession();
				String msgname=request.getParameter("path");
				int n=msgname.length();
				System.out.println(msgname);
				System.out.println(n);
				String Name1=msgname.substring(0, n-4);
				//System.out.println("�ɹ��������ǣ�"+Name1);
				session.setAttribute("name",Name1);*/
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

class A1{
	public String read(String path) {
        // 新建一个文件
        File file = new File(path);
        String msg = "";
        String str="";
        try {
            // 读入文件输入流
        	FileInputStream in = new FileInputStream(file);
            // 看输入流需要多少空间的字节流，数组
        	byte[] b=new byte[in.available()];
            // 数组转为字符串
            in.read(b);
            msg =  new String (b);
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // �ر�������
              
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return msg;
    }
}
