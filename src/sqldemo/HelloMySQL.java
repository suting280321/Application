package sqldemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HelloMySQL {

    public static void main(String[] args) {
        //声明Connection对象
        Connection con = null;
        //驱动程序名
        String driver = "com.mysql.jdbc.Driver";
        //URL指向要访问的数据库名mydata
        String url = "jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=Asia/Shanghai";//127.0.0.1=localhost
        //MySQL配置时的用户名
        String user = "root";
        //MySQL配置时的密码
        String password = "2803213531su";
        //遍历查询结果集
//        try {
            //加载驱动程序
            try {
				Class.forName(driver);
				System.out.println("驅動加載成功");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            //1.getConnection()方法，连接MySQL数据库！！
            try {
				con = DriverManager.getConnection(url,user,password);
				System.out.println("數據庫連接成功");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            try {
				if(!con.isClosed())
				    System.out.println("Succeeded connecting to the Database!");
				 Statement statement = con.createStatement();
		            //要执行的SQL语句
		            String sql = "select * from student";
		            //3.ResultSet类，用来存放获取的结果集！！
		            ResultSet rs = statement.executeQuery(sql);
		            System.out.println("-----------------");
		            System.out.println("执行结果如下所示:");  
		            System.out.println("-----------------");  
		            System.out.println("id" + "\t" + "姓名"+"學號" + "\t" + "專業");  
		            System.out.println("-----------------"); 
		            String id = null;
		            String name = null;
		            String number = null;
		            String major = null;
		            while(rs.next()){
		                //获取stuname这列数据
		            	id = rs.getString("id");
		                //获取stuid这列数据
		            	name = rs.getString("name");
		            	number = rs.getString("number");
		                //获取stuid这列数据
		            	major = rs.getString("major");

		                //输出结果
		                System.out.println(id + "\t" + name +"\t" +number + "\t" + major);
		            }
		            rs.close();
		            con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//        }
    }

}

