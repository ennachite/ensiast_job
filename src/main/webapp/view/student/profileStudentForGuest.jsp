<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp"/>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp"/>

<!-- Title -->
<title> ${ requestScope.student.firstName }'s Profile</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp"/>

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp"/>

<!--====== PROFILE PART START ======-->

<div class="container my-110 p-5">
    <div class="md:flex no-wrap md:-mx-2">
        <!-- Left side -->
        <div class="w-full md:w-3/12 md:mx-2">
            <!-- Profile Card -->
            <div class="single_team mx-3">
                <div class="team_image overflow-hidden relative">
                    <c:choose>
                        <c:when test="${ requestScope.member.picture != null }">
                            <img src="http://localhost/${ requestScope.member.picture }" alt="Pdp"
                                 class="h-auto w-full mx-auto">
                        </c:when>
                        <c:otherwise>
                            <img src="assets/img/person.jpg" alt="Pdp" class="h-auto w-full mx-auto">
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="m-2 p-2">
                    <h1 class="font-bold text-3xl capitalize">${ requestScope.student.firstName } ${ requestScope.student.lastName }</h1>
                    <h3 class="text-zinc-700 font-lg hover:text-zinc-900">${ requestScope.student.yearStudies } ${ requestScope.student.specialty }</h3>
                    <p class="text-lg text-zinc-500 hover:text-zinc-600">${ requestScope.profile_student.summary }</p>
                    <ul class="bg-gray text-zinc-600 hover:text-zinc-700 hover:shadow py-2 px-3 divide-y rounded shadow-sm">
                        <li class="flex items-center py-3">
                            <span>Status</span>
                            <span class="ml-auto">
                                <span class="bg-ensias-red py-1 px-2 rounded text-white text-sm">${ requestScope.student.yearStudies.equals("Alumni") ? "Alumni" : "Student" }</span>
                            </span>
                        </li>
                        <li class="flex items-center py-3">
                            <span>Promo</span>
                            <span class="ml-auto">${ requestScope.student.promo }</span>
                        </li>
                        <li class="flex items-center py-3">
                            <span>Rating</span>
                            <span class="ml-auto">
                                <ul class="flex justify-center">
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                                             class="w-4 text-ensias-red mr-1" role="img"
                                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor"
                                                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                                             class="w-4 text-ensias-red mr-1" role="img"
                                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor"
                                                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star"
                                             class="w-4 text-ensias-red mr-1" role="img"
                                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor"
                                                  d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star"
                                             class="w-4 text-ensias-red mr-1" role="img"
                                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor"
                                                  d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star"
                                             class="w-4 text-ensias-red" role="img" xmlns="http://www.w3.org/2000/svg"
                                             viewBox="0 0 576 512">
                                            <path fill="currentColor"
                                                  d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
                                            </path>
                                        </svg>
                                    </li>
                                </ul>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- End Profile card -->
        </div>
        <!-- Right side -->
        <div class="w-full md:w-9/12 mx-2 my-4">
            <!-- Profile tab -->
            <!-- About section -->
            <div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
                <div class="flex items-center justify-between my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <div class="">
                        <span class="text-theme-color relative inline-block ">
                            <i class="lni lni-user"></i>
                        </span>
                        <span class="tracking-wide ">About</span>
                    </div>
                </div>
                <div class="text-zinc-700">
                    <div class="grid md:grid-cols-2 text-lg">
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Name</div>
                            <div class="px-4 py-2 capitalize text-gray-500">${ requestScope.student.firstName } ${ requestScope.student.lastName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">City</div>
                            <div class="px-4 py-2 text-gray-500"> ${ requestScope.member.city }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">CNE</div>
                            <div class="px-4 py-2 text-gray-500">${ requestScope.student.CNE }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">CIN</div>
                            <div class="px-4 py-2 text-gray-500">${ requestScope.student.CIN }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Gender</div>
                            <div class="px-4 py-2 text-gray-500">${ requestScope.student.gender }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Birthdate</div>
                            <div class="px-4 py-2 text-gray-500">${ requestScope.student.birthdate }</div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Phone number</div>
                            <div class="px-4 py-2 text-gray-500">${ requestScope.student.phone }</div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Email</div>
                            <div class="px-4 py-2 text-gray-500">
                                <a href="mailto:Microsoft@example.com">${ requestScope.member.email }</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End About Section -->
            <div class="my-4"></div>

            <jsp:include page="/view/student/profile/profileDetails.jsp"/>

            <!-- End Profile tab -->
        </div>

    </div>

</div>

<!--====== PROFILE PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp"/>
