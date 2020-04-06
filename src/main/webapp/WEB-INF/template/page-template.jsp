<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <jsp:include page="../section/css.jsp"/>

</head>
<body>
<jsp:include page="../section/header.jsp"/>
<jsp:include page="../section/navigation.jsp"/>
<section class="main">
    <sitemesh:write property='body'/>
</section>
<jsp:include page="../section/footer.jsp"/>

<jsp:include page="../section/js.jsp"/>
</body>
</html>