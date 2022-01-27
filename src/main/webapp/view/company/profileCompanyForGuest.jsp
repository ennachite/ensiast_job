<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.company.companyName }'s Profile</title>
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
                <div class="team_image overflow-hidden relative">
                    <c:choose>
                        <c:when test="${ requestScope.member.picture != null }">
                            <img src="http://localhost/${ requestScope.member.picture }" alt="company-logo" class="h-auto w-full mx-auto">
                        </c:when>
                        <c:otherwise>
                            <img src="${pageContext.request.contextPath}/assets/img/person.jpg" alt="Pdp" class="h-auto w-full mx-auto">
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="m-2 p-2">
                    <p class="text-lg text-zinc-500 hover:text-zinc-600">${ requestScope.company.description }</p>
                    <ul class="bg-gray text-zinc-600 hover:text-zinc-700 hover:shadow py-2 px-3 divide-y rounded shadow-sm">
                        <li class="flex items-center py-3">
                            <span>Status</span>
                            <span class="ml-auto">
                                <span class="bg-ensias-red py-1 px-2 rounded text-white text-sm">Company</span>
                            </span>
                        </li>
                        <li class="flex items-center py-3">
                            <span>Rating</span>
                            <span class="ml-auto">
                                <ul class="flex justify-center">
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M259.3 17.8L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0z"></path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z"></path>
                                        </svg>
                                    </li>
                                    <li>
                                        <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="star" class="w-4 text-ensias-red mr-1" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512">
                                            <path fill="currentColor" d="M528.1 171.5L382 150.2 316.7 17.8c-11.7-23.6-45.6-23.9-57.4 0L194 150.2 47.9 171.5c-26.2 3.8-36.7 36.1-17.7 54.6l105.7 103-25 145.5c-4.5 26.3 23.2 46 46.4 33.7L288 439.6l130.7 68.7c23.2 12.2 50.9-7.4 46.4-33.7l-25-145.5 105.7-103c19-18.5 8.5-50.8-17.7-54.6zM388.6 312.3l23.7 138.4L288 385.4l-124.3 65.3 23.7-138.4-100.6-98 139-20.2 62.2-126 62.2 126 139 20.2-100.6 98z"></path>
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
                            <div class="px-4 py-2 font-semibold">Company Name</div>
                            <div class="px-4 py-2 capitalize">${ requestScope.company.companyName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">CEO</div>
                            <div class="px-4 py-2 capitalize">${ requestScope.company.companyName }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Company Size</div>
                            <div class="px-4 py-2">${ requestScope.company.companySizeWord }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Phone number</div>
                            <div class="px-4 py-2">${ requestScope.company.companyFix }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">City</div>
                            <div class="px-4 py-2">${ requestScope.member.city }</div>
                        </div>
                        <div class="grid grid-cols-2">
                            <div class="px-4 py-2 font-semibold">Email</div>
                            <div class="px-4 py-2">
                                <a href="mailto:Microsoft@example.com">${ requestScope.member.email }</a>
                            </div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Tax Identification Number</div>
                            <div class="px-4 py-2">${ requestScope.company.companyTif }</div>
                        </div>
                        <div class="grid grid-cols-2 ">
                            <div class="px-4 py-2 font-semibold">Founded</div>
                            <div class="px-4 py-2">${ requestScope.company.founded }</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End About Section -->

            <div class="my-4"></div>

            <!-- Experience & Eduction -->
            <div class="bg-white p-3 shadow-sm rounded-sm">
                <!-- Cards -->
                <div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-2">
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-orange-500 bg-orange-100 rounded-full ">
                            <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z"></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Total candidatures
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                6389
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-green-500 bg-green-100 rounded-full ">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H5a2 2 0 00-2 2v9a2 2 0 002 2h14a2 2 0 002-2V8a2 2 0 00-2-2h-5m-4 0V5a2 2 0 114 0v1m-4 0a2 2 0 104 0m-5 8a2 2 0 100-4 2 2 0 000 4zm0 0c1.306 0 2.417.835 2.83 2M9 14a3.001 3.001 0 00-2.83 2M15 11h3m-3 4h2"></path>
                            </svg>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Employees
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                ${ requestScope.company.companySize } +
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid ">
                        <div class="p-3 mr-4 text-blue-500 bg-blue-100 rounded-full ">
                            <img src="https://img.icons8.com/ios/50/000000/find-matching-job.png" class="h-6 w-6" alt="job offer"/>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Job Offers
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                376
                            </p>
                        </div>
                    </div>
                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="p-3 mr-4 text-teal-500 bg-teal-100 rounded-full ">
                            <img src="https://img.icons8.com/ios/50/000000/internship.png" class="h-6 w-6" alt="Internship offer"/>
                        </div>
                        <div>
                            <p class="mb-2 text-sm font-medium text-gray-600 ">
                                Internship Offers
                            </p>
                            <p class="text-lg font-semibold text-gray-700 ">
                                35
                            </p>
                        </div>
                    </div>

                    <!-- Card -->
                    <div class="flex items-center p-4 bg-white rounded-lg shadow-xs companyProfile-grid">
                        <div class="px-4 py-4 mb-1 tracking-wide">
                            <h2 class="mt-1 font-semibold text-gray-800">106 Users reviews</h2>
                            <div class="px-8 pb-3 -mx-8 border-b">
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>5 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-7/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">51%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>4 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-1/5 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">17%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>3 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-3/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">19%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>2 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-1/5 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">8%</span>
                                    </div>
                                </div>
                                <div class="flex items-center mt-1">
                                    <div class="w-1/5 tracking-tighter text-gray-500">
                                        <span>1 star</span>
                                    </div>
                                    <div class="w-3/5">
                                        <div class="w-full h-2 bg-gray-300 rounded-lg">
                                            <div class="w-2/12 h-2 bg-ensias-red rounded-lg"></div>
                                        </div>
                                    </div>
                                    <div class="w-1/5 pl-3 text-gray-700">
                                        <span class="text-sm">5%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
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