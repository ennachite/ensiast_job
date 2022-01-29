<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title>Modify Password</title>
</head>
<body>
<c:choose>
<c:when test="${ sessionScope.role.equals('ADMIN') }">
    <jsp:include page="${pageContext.request.contextPath}/view/admin/sidebareAdmin.jsp"/>
</c:when>
<c:otherwise>
    <%--Preloader--%>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp"/>

    <%--Navbar--%>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp"/>
</c:otherwise>
</c:choose>

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120 h-full">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Change Account Password</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-6/12 sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer mt-8 mx-3 text-left">
                    <form method="post">
                        <c:if test="${ requestScope.error != null }">
                            <c:out value="${ requestScope.error }"/>
                        </c:if>
                        <div class=" mt-6 pb-5 lg:mb-2 mx-1">
                            <label class="text-gray-600 text-lg" for="password"> Current Password</label>
                            <div class="relative w-full password_field">
                                <div class="absolute inset-y-0 right-0 flex items-center px-2">
                                    <input class="hidden js-password-toggle" id="toggle" type="checkbox"/>
                                    <label class=" hover:text-ensias-red rounded px-2 py-1 js-password-label"
                                           for="toggle">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                             viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>
                                        </svg>
                                    </label>
                                </div>
                                <input name="current-password"
                                       class="appearance-none w-full mt-1 py-2 px-2 border-2 border-gray-400 rounded-lg text-gray-700 hover:border-ensias-red js-password"
                                       id="password" type="password" autocomplete="off"/>
                            </div>

                        </div>

                        <div class=" mt-4 pb-5 lg:mb-2 mx-1">
                            <label class="text-gray-600 text-lg" for="password"> New Password</label>
                            <div class="relative w-full password_field">
                                <div class="absolute inset-y-0 right-0 flex items-center px-2">
                                    <input class="hidden js-password-toggle" id="toggle1" type="checkbox"/>
                                    <label class=" hover:text-ensias-red rounded px-2 py-1 js-password-label"
                                           for="toggle">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none"
                                             viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                  d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21"></path>
                                        </svg>
                                    </label>
                                </div>
                                <input name="new-password"
                                       class="appearance-none w-full mt-1 py-2 px-2 border-2 border-gray-400 rounded-lg text-gray-700 hover:border-ensias-red js-password"
                                       id="password1" type="password" autocomplete="off"/>
                            </div>

                        </div>
                        <a class="flex justify-center p-4 mb-8 text-sm text-white bg-red-700 hover:bg-ensias-red rounded-lg shadow-md focus:outline-none mt-3">
                            <button type="submit" class="font-bold">Change</button>
                        </a>
                    </form>
                </div>

            </div>
        </div>
        <!-- ========== GRID END ============-->
    </div>
</section>
<!--====== JOB POSTS PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>