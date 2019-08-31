package sqldemo;

import javax.swing.filechooser.FileSystemView;

import org.apache.tomcat.jni.File;

public class test {
	public static void main(String arg[]) {
		FileSystemView fsv = FileSystemView.getFileSystemView();
		java.io.File com=fsv.getHomeDirectory();    //这便是读取桌面路径的方法了
		System.out.println(com.getPath());
	}
}
