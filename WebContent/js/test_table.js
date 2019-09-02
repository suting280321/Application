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
		url: '/Application/ReadFile1',
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
	var str=value;
	arr=str.split("-");
	title='<a href="readContent1?path='+value+'">'+arr[0]+'</a>';//把内容变成链接
	return title;
}
