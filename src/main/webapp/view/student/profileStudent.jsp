<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.student.firstName }'s Profile</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp" />

<!--====== PROFILE PART START ======-->

<div class="container my-110 p-5">
    <div class="md:flex no-wrap md:-mx-2">
        <!-- Left side -->
        <div class="w-full md:w-3/12 md:mx-2">
            <!-- Profile Card -->
            <div class="single_team mx-3">
                <div class="team_image overflow-hidden relative">
                    <c:choose>
                        <c:when test="${ sessionScope.member.picture != null }">
                            <img src="http://localhost/ensiastjob/${ sessionScope.member.picture }" alt="Pdp" class="h-auto w-full mx-auto">
                        </c:when>
                        <c:otherwise>
                            <img src="assets/img/person.jpg" alt="Pdp" class="h-auto w-full mx-auto">
                        </c:otherwise>
                    </c:choose>
                    <div class="absolute rounded-full pl-2 pt-1 top-0">
                        <label class=" flex flex-col items-center p-2 rounded-full text-theme-color duration-150 border-1 border-ensias-red hover:bg-red-900 hover:text-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 inline-block" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
                            </svg>
                            <form method="post" action="/upload-pp" enctype="multipart/form-data">
                                <input name="profile-picture" type='file' class="hidden" accept="image/*"/>
                                <button type="submit">change</button>
                            </form>
                        </label>
                    </div>
                </div>
                <div class="m-2 p-2">
                    <h1 class="font-bold text-3xl capitalize">${ sessionScope.student.firstName } ${ sessionScope.student.lastName }</h1>
                    <h3 class="text-zinc-700 font-lg hover:text-zinc-900">${ sessionScope.student.yearStudies } ${ sessionScope.student.specialty }</h3>
                    <p class="text-lg text-zinc-500 hover:text-zinc-600">${ sessionScope.profile_student.summary }</p>
                    <ul class="bg-gray text-zinc-600 hover:text-zinc-700 hover:shadow py-2 px-3 divide-y rounded shadow-sm">
                        <li class="flex items-center py-3">
                            <span>Status</span>
                            <span class="ml-auto">
                                <span class="bg-ensias-red py-1 px-2 rounded text-white text-sm">${ sessionScope.student.yearStudies.equals("Alumni") ? "Alumni" : "Student" }</span>
                            </span>
                        </li>
                        <li class="flex items-center py-3">
                            <span>Promo</span>
                            <span class="ml-auto">${ sessionScope.student.promo }</span>
                        </li>
                        <li class="flex items-center py-3">
                            <span>Rating</span>
                            <span class="ml-auto">
                                <ul class="flex justify-center">
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
                                            </path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star" class="w-4 text-ensias-red" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z">
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
                    <a href="<c:url value="/modify-student-profile" />" class="flex items-center justify-between px-3 py-3 text-sm font-medium leading-5 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                            <path
                                d="M13.586 3.586a2 2 0 112.828 2.828l-.793.793-2.828-2.828.793-.793zM11.379 5.793L3 14.172V17h2.828l8.38-8.379-2.83-2.828z">
                            </path>
                        </svg>
                    </a>
                </div>
                <div class="text-zinc-700">
                    <div class="grid md:grid-cols-2 text-lg">
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Name</div>
                            <div class="px-4 py-2 capitalize text-gray-500">${ sessionScope.student.firstName } ${ sessionScope.student.lastName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">City</div>
                            <div class="px-4 py-2 text-gray-500"> ${ sessionScope.member.city }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">CNE</div>
                            <div class="px-4 py-2 text-gray-500">${ sessionScope.student.CNE }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">CIN</div>
                            <div class="px-4 py-2 text-gray-500">${ sessionScope.student.CIN }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Gender</div>
                            <div class="px-4 py-2 text-gray-500">${ sessionScope.student.gender }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Birthdate</div>
                            <div class="px-4 py-2 text-gray-500">${ sessionScope.student.birthdate }</div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Phone number</div>
                            <div class="px-4 py-2 text-gray-500">${ sessionScope.student.phone }</div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Email</div>
                            <div class="px-4 py-2 text-gray-500">
                                <a href="mailto:Microsoft@example.com">${ sessionScope.member.email }</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End About Section -->
            <div class="my-4"></div>

            <jsp:include page="/view/student/profile/profileDetails.jsp" />

            <!-- End Profile tab -->
        </div>

    </div>

    <jsp:include page="/view/student/profile/profileDetailsModals.jsp" />

</div>

<!--====== PROFILE PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
