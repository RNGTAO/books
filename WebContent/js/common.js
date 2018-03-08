function _change() {
	$("#vCode").attr("src", "/books/VerifyCodeServlet?" + new Date().getTime());
}