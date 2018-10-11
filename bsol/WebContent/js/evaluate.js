function imgChange(obj) {
	//获取上传的文本框对象
	var file = obj;
	/* 创建一个新的对象URL,该对象代表某个指定的File对象
		生成的对象URL,可以获取指定文件的完整内容
	*/
	//获取上传图片的绝对路径
	var imgUrl = window.URL.createObjectURL(file.files[0]);
	var img = obj.parentNode.parentNode.parentNode.nextElementSibling;//document.getElementById("imghead");
	img.style.visibility="visible";
	img.setAttribute("src", imgUrl);
}