<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/header.jsp" />

<!-- Title -->
<title>ENSIAST JOB: Log In</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/preloader.jsp" />

<section id="login" class="login_area">
    <div class="bg-red-50 h-screen flex flex-col space-y-10 justify-center items-center">

        <!-- logo -->
        <div class=" flex w-96 ">
            <a href="<c:url value="/" />" ><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo"></a>
        </div>

        <!-- Layout  -->
        <div class="bg-white w-96 shadow-xl rounded p-5">
            <h1 class="text-3xl font-medium">Sign in</h1>
            <p class="text-sm">Stay updated on your professional world</p>
            <form class="space-y-5 mt-5" method="post" action="/login">
                <% if (request.getAttribute("error") != null) {%>
                <div class="text-ensias-red"><% out.println(request.getAttribute("error")); %></div>
                <% } %>
                <input name="email" type="text" class="w-full h-12 border border-gray-800 rounded px-3" placeholder="Email" />
                <div class="w-full flex items-center border border-gray-800 rounded px-3">
                    <input name="password" type="password" class="w-4/5 h-12 js-password" id="password" placeholder="Password" />
                    <span class="text-theme-color hover:text-ensias-red rounded-full px-3 cursor-pointer">show</span>
                </div>
                <div class="">
                    <a href="#" class="font-medium text-theme-color hover:text-ensias-red rounded-full p-2">Forgot password ?</a>
                </div>
                <button class="w-full main-btn contact-btn" name="login" type="submit">Log In</button>
            </form>
        </div>

        <!-- Footer -->
        <p>New to ENSIAST JOB ? <a href="#!" class="text-the font-medium">Register</a></p>
    </div>
</section>

<!--====== Main js ======-->
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

</body>
</html>