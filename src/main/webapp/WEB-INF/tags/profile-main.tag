<%@ tag  pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<div class="panel panel-primary">
    <a href="/edit"><img class="img-responsive photo" src="${pageContext.request.contextPath}/media/avatar/1e9b951b-046f-497e-b518-abb1d76f7f6c.jpg" alt="photo"></a>
    <h1 class="text-center">
        <a style="color: black;" href="/edit">${name != null ? name : 'Richard Hendricks' }</a>
    </h1>
    <h6 class="text-center">
        <strong>Odessa, Ukraine</strong>
    </h6>
    <h6 class="text-center">
        <strong>Age:</strong> 27, <strong>Birthday: </strong> Feb 26, 1989
    </h6>
    <div class="list-group contacts">
        <a class="list-group-item" href="tel:+380507525137"><i class="fa fa-phone  faa-wrench animated-hover "></i>&nbsp; +380507525137</a>
        <a class="list-group-item" href="mailto:richard-hendricks@gmail.com"><i class="fa fa-envelope faa-horizontal animated-hover"></i>&nbsp; richard-hendricks@gmail.com</a>
        <a class="list-group-item" href="javascript:void(0);"><i class="fa fa-skype"></i>&nbsp; richard-hendricks</a>
        <a target="_blank" class="list-group-item" href="https://vk.com/richard-hendricks"><i class="fa fa-vk"></i> https://vk.com/richard-hendricks</a>
        <a target="_blank" class="list-group-item" href="https://facebook.com/richard-hendricks"><i class="fa fa-facebook"></i>&nbsp; https://facebook.com/richard-hendricks</a>
        <a target="_blank" class="list-group-item" href="https://linkedin.com/richard-hendricks"><i class="fa fa-linkedin"></i> https://linkedin.com/richard-hendricks</a>
        <a target="_blank" class="list-group-item" href="https://github.com/richard-hendricks"><i class="fa fa-github"></i> https://github.com/richard-hendricks</a>
        <a target="_blank" class="list-group-item" href="https://stackoverflow.com/richard-hendricks"><i class="fa fa-stack-overflow"></i> https://stackoverflow.com/richard-hendricks</a>
    </div>
</div>