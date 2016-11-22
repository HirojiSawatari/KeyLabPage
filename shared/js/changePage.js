
window.onload = function()                             //重写窗体加载的事件

{
	var obj = document.getElementById("wrapper2");  //获取内容层

    var pages = document.getElementById("pages");         //获取翻页层

    var allpages = Math.ceil(parseInt(obj.scrollHeight)/parseInt(obj. offsetHeight));
	//获取页面数量

    pages.innerHTML = "<b>共"+allpages+"页</b>";     //输出页面数量

    for (var i=1;i<=allpages;i++){

        pages.innerHTML += "<a href=\"javascript:showPage('"+i+"');\">第"+i+"页</a>&nbsp;";

//循环输出第几页

    }

}

function showPage(pageINdex)

{
    var obj = document.getElementById("wrapper2");
    obj.scrollTop=(pageINdex-1)*parseInt(obj.offsetHeight);                                                                    
	//根据高度，输出指定的页

}