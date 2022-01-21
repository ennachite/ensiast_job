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

<div class="container mx-auto my-110 p-5">
    <div class="md:flex no-wrap md:-mx-2">
        <!-- Left side -->
        <div class="w-full md:w-3/12 md:mx-2">
            <!-- Profile Card -->
            <div class="single_team mx-3">
                <div class="team_image overflow-hidden">
                    <img src="assets/img/person.jpg" alt="Pdp" class="h-auto w-full mx-auto">
                </div>
                <div class="m-2 p-2">
                    <h1 class="font-bold text-3xl capitalize">${ sessionScope.student.firstName } ${ sessionScope.student.lastName }</h1>
                    <h3 class="text-zinc-700 font-lg hover:text-zinc-900">${ sessionScope.student.yearStudies } ${ sessionScope.student.specialty }</h3>
                    <c:if test="${ sessionScope.profile_student.summary != null }">
                        <p class="text-lg text-zinc-500 hover:text-zinc-600">${ sessionScope.profile_student.summary }</p>
                    </c:if>
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
                    </ul>
                </div>
            </div>
            <!-- End Profile card -->
        </div>
        <!-- Right side -->
        <div class="w-full md:w-9/12 mx-2 my-4">
            <!-- Profile tab -->
            <!-- About section -->
            <div class="bg-white m-3 p-3 shadow-sm rounded-sm">
                <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <i class="lni lni-user"></i>
                        </span>
                    <span class="tracking-wide ">About</span>
                </div>
                <div class="text-zinc-700">
                    <div class="grid md:grid-cols-2 text-lg">
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">First Name</div>
                            <div class="px-4 py-2 capitalize">${ sessionScope.student.firstName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Last Name</div>
                            <div class="px-4 py-2 capitalize"> ${ sessionScope.student.lastName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Gender</div>
                            <div class="px-4 py-2"> ${ sessionScope.student.gender }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Phone number</div>
                            <div class="px-4 py-2"> ${ sessionScope.student.phone }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">City</div>
                            <div class="px-4 py-2"> ${ sessionScope.member.city }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Email</div>
                            <div class="px-4 py-2">
                                <a href="mailto:matrix@example.com" class="text-blue-800"> ${ sessionScope.member.email }</a>
                            </div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Birthday</div>
                            <div class="px-4 py-2"> ${ sessionScope.student.birthdate }</div>
                        </div>
                    </div>
                </div>
<%--                <button class="block w-full text-ensias-red text-sm font-semibold rounded-lg hover:bg-gray focus:outline-none focus:shadow-md focus:bg-gray hover:shadow-sm p-3 my-4">Show Full Informs</button>--%>
            </div>
            <!-- End About Section -->

            <div class="my-4"></div>

            <!-- Experience & Eduction -->
            <div class="bg-white p-3 shadow-sm rounded-sm">
                <div class="grid grid-cols-2">
                    <div>
                        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                                <span class="text-theme-color relative inline-block ">
                                    <i class="lni lni-list"></i>
                                </span>
                            <span class="tracking-wide ">Experience</span>
                        </div>
                        <ul class="list-inside space-y-2 text-xl">
                            <li>
                                <div class="text-teal-600">Internship at IBM</div>
                                <div class="text-zinc-500 text-xs">July 2021 - September 2021</div>
                            </li>
                            <li>
                                <div class="text-teal-600">Internship at IBM</div>
                                <div class="text-zinc-500 text-xs">July 2021 - September 2021</div>
                            </li>
                            <li>
                                <div class="text-teal-600">Internship at IBM</div>
                                <div class="text-zinc-500 text-xs">July 2021 - September 2021</div>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                                <span class="text-theme-color relative inline-block ">
                                    <i class="lni lni-graduation"></i>
                                </span>
                            <span class="tracking-wide ">Education</span>
                        </div>
                        <ul class="list-inside space-y-2 text-xl">
                            <li>
                                <div class="text-teal-600">ENSIAS (IWIM)</div>
                                <div class="text-zinc-500 text-xs">September 2020 - Now</div>
                            </li>
                            <li>
                                <div class="text-teal-600">Preparatory Classes</div>
                                <div class="text-zinc-500 text-xs">September 2018 - August 2020</div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- End Experience & Eduction Grid -->
            </div>
            <!-- End Profile tab -->
        </div>
    </div>
</div>

<!--====== PROFILE PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
