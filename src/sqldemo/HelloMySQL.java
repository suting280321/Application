package sqldemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HelloMySQL {

    public static void main(String[] args) {
        //����Connection����
        Connection con = null;
        //����������
        String driver = "com.mysql.jdbc.Driver";
        //URLָ��Ҫ���ʵ����ݿ���mydata
        String url = "jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=Asia/Shanghai";//127.0.0.1=localhost
        //MySQL����ʱ���û���
        String user = "root";
        //MySQL����ʱ������
        String password = "2803213531su";
        //������ѯ�����
//        try {
            //������������
            try {
				Class.forName(driver);
				System.out.println("�Ӽ��d�ɹ�");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            //1.getConnection()����������MySQL���ݿ⣡��
            try {
				con = DriverManager.getConnection(url,user,password);
				System.out.println("�������B�ӳɹ�");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            try {
				if(!con.isClosed())
				    System.out.println("Succeeded connecting to the Database!");
				 Statement statement = con.createStatement();
		            //Ҫִ�е�SQL���
		            String sql = "select * from student";
		            //3.ResultSet�࣬������Ż�ȡ�Ľ��������
		            ResultSet rs = statement.executeQuery(sql);
		            System.out.println("-----------------");
		            System.out.println("ִ�н��������ʾ:");  
		            System.out.println("-----------------");  
		            System.out.println("id" + "\t" + "����"+"�W̖" + "\t" + "���I");  
		            System.out.println("-----------------"); 
		            String id = null;
		            String name = null;
		            String number = null;
		            String major = null;
		            while(rs.next()){
		                //��ȡstuname��������
		            	id = rs.getString("id");
		                //��ȡstuid��������
		            	name = rs.getString("name");
		            	number = rs.getString("number");
		                //��ȡstuid��������
		            	major = rs.getString("major");

		                //������
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

