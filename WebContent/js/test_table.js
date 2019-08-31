//使用jQuery匿名函数快速执行bootstrap这个函数
$(function(){
	bootstrap();
})
//下面定义了一个函数bootstrap
function bootstrap(){
	
	$('#table').bootstrapTable({
		//控制是否显示边框
		classes: 'table-no-bordered' ,
		//控制是否显示表头
		search:false,
		strictsearch: false, 
		//控制表格整体高度
		height: 500,  //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
		
		pagination: true,
		pageList: [10,15, 20], // 设置页面可以显示的数据条数
	    pageSize: 15,//页面数据条数
	    paginationDetailHAlign:'right',
	    pageNumber: 1,//首页页码
		showHeader:false,
		url: '/Application/ReadFile_v1',
	    columns: [{
	        field: 'title',
	        title: 'Item ID',
	        formatter:changetitleFormatter,
	        width:300,
	        
	    }, {
	        field: 'addtime',
	        title: 'Item Name',
//	        formatter:changetitleFormatter1,
	        width:120,
	        align: 'right',
	    }, ]
	});	
}
function changetitleFormatter(value,row,index){
	console.log(value,row,index);
	//将成果以有头有尾的格式展示到页面
	//但是存在一个问题，就是会显得比较臃肿，因为需要将要读的所有文件放在jsp的同级目录下
	//	title='<a href="Achivements.jsp?link='+value+'">'+value+'</a>';
	
	
	//接下来尝试添加相对路径使得jsp能读取文件夹的内容
	//显示时去掉.Html
	var str=value;
	arr=str.split("-");
	//title='<a href="Achivements.jsp?link=files/'+value+'">'+value+'</a>';
	//title='<a href="readContent?path='+arr[0]+'.htm">'+arr[0]+'</a>';
	title='<a href="readContent?path='+value+'">'+arr[0]+'</a>';
	return title;
}
/*function changetitleFormatter1(value,row,index){
	console.log(value,row,index);
	//将成果以有头有尾的格式展示到页面
	//但是存在一个问题，就是会显得比较臃肿，因为需要将要读的所有文件放在jsp的同级目录下
	//	title='<a href="Achivements.jsp?link='+value+'">'+value+'</a>';
	
	
	//接下来尝试添加相对路径使得jsp能读取文件夹的内容
	//显示时去掉.Html
	var str1=value;
	arr1=str1.split("-");
	//title='<a href="Achivements.jsp?link=files/'+value+'">'+value+'</a>';
	//title='<a href="readContent?path='+arr[0]+'.htm">'+arr[0]+'</a>';
	CreateTime=arr[1];
	return CreateTime;
}*/

/*$(document).ready(function(){
	$('#footbarHref').css('color','#87CEFA');
});*/