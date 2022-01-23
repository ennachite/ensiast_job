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
                    <img src="assets/img/person.jpg" alt="Pdp" class="h-auto w-full mx-auto">
                    <div class="absolute rounded-full pl-2 pt-1 top-0">
                        <label class=" flex flex-col items-center p-2 rounded-full text-theme-color duration-150 border-1 border-ensias-red hover:bg-red-900 hover:text-white">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 inline-block" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 9a2 2 0 012-2h.93a2 2 0 001.664-.89l.812-1.22A2 2 0 0110.07 4h3.86a2 2 0 011.664.89l.812 1.22A2 2 0 0018.07 7H19a2 2 0 012 2v9a2 2 0 01-2 2H5a2 2 0 01-2-2V9z"></path>
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
                            </svg>
                            <input type='file' class="hidden" accept="image/*"/>
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
            <!--  ======= Start Experiences =========-->
            <div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
                <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                            <span class="text-theme-color relative inline-block ">
                                <i class="lni lni-list"></i>
                            </span>
                        <span class="tracking-wide ">Experience</span>
                    </div>
                    <a href="#"
                       class="flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white"
                       aria-label="Edit">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                             stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                        </svg>
                    </a>
                </div>
                <div class="text-zinc-700">
                    <ul class="list-inside text-xl">
                        <!-- ========== Start Experience =========== -->
                        <li class="mb-3 border-b-2">
                            <div class="flex justify-between">
                                <div class="text-teal-600">Workflow Manager</div>
                                <div class="flex items-center ">
                                    <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </a>
                                    <a href="" class=" p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="text-zinc-500 text-sm">Ibn Tofail University, Internship</div>
                            <div class="text-zinc-500 text-sm">Jul 2021 - Aug 2021, 2 months</div>
                            <div class="text-zinc-500 text-sm">Kenitra, Morocco</div>
                            <div class="text-zinc-500 text-sm pb-3">Lorem ipsum dolor sit amet consectetur
                                adipisicing
                                elit. Sunt molestiae doloribus necessitatibus deserunt. Ducimus, maiores neque.
                                Iste, in, asperiores similique repudiandae, corporis natus dolores dicta dolorum
                                ratione laborum vero inventore.</div>
                        </li>
                        <!-- ========== End Experience =========== -->
                    </ul>
                </div>
            </div>
            <!-- ========= End Experiences ========= -->

            <!--  ======= Start Educations =========-->
            <div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
                <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <i class="lni lni-graduation"></i>
                        </span>
                        <span class="tracking-wide ">Education</span>
                    </div>
                    <a href="#" class="flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                        </svg>
                    </a>
                </div>
                <div class="text-zinc-700">
                    <ul class="list-inside text-xl">
                        <!-- ========== Start Education =========== -->
                        <li class="mb-3 border-b-2 pb-3">
                            <div class="flex justify-between">
                                <div class="text-teal-600">National school For Computer Science (ENSIAS)</div>
                                <div class="flex items-center ">
                                    <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </a>
                                    <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="text-zinc-500 text-sm">Engineering degree, Web and Mobile computing
                                Engineering</div>
                            <div class="text-zinc-500 text-sm">2021 - 2023</div>
                            <div class="text-zinc-500 text-sm">Lorem ipsum, dolor sit amet consectetur adipisicing
                                elit. Illo odio hic corporis deserunt rerum? Perspiciatis, cupiditate quia atque
                                exercitationem fugit tempora, adipisci, commodi nobis voluptas rem incidunt
                                molestiae eligendi aperiam.</div>
                        </li>
                        <!-- ========== End Education =========== -->
                    </ul>
                </div>
            </div>
            <!-- ========= End Educations ========= -->

            <!--  ======= Start Certifications =========-->
            <div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
                <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <svg class="h-8 w-8" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
                                <path d="M13 19.95V22h12.998C26.55 22 27 21.551 27 20.993V8.007A.999.999 0 0 0 25.998 7H6.002C5.45 7 5 7.449 5 8.007v12.986A.999.999 0 0 0 6.002 22H8v-2.05a3.5 3.5 0 1 1 5 0Zm-4 .713V24.6l1.5-1.5 1.5 1.5v-3.937a3.486 3.486 0 0 1-1.5.337c-.537 0-1.045-.12-1.5-.337ZM8 23H6.005A2.002 2.002 0 0 1 4 21V8a2 2 0 0 1 2.005-2h19.99C27.103 6 28 6.895 28 8v13a2 2 0 0 1-2.005 2H13v4l-2.5-2.5L8 27v-4ZM7 11v1h18v-1H7Zm9 3v1h9v-1h-9Zm3 3v1h6v-1h-6Zm-8.5 3a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z" fill="#cc2426" fill-rule="evenodd" class="fill-929292"></path>
                            </svg>
                        </span>
                        <span class="tracking-wide ">Certification</span>
                    </div>
                    <a href="#" class="flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                        </svg>
                    </a>
                </div>
                <div class="text-zinc-700">
                    <ul class="list-inside text-xl">
                        <!-- ========== Start Certification =========== -->
                        <li class="mb-3 border-b-2 pb-3">
                            <div class="flex justify-between">
                                <div class="text-teal-600">Learn Java Course</div>
                                <div class="flex items-center ">
                                    <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                        </svg>
                                    </a>
                                    <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <div class="text-zinc-500 text-sm">Codecademy</div>
                            <div class="text-zinc-500 text-sm">Issued Mar 2021 - No expiration date</div>
                            <div class="text-zinc-500 text-sm underline"><a href="https://www.codecademy.com/profiles/soumyaKaddouri9885141431/certificates/d3f89367b558583e361640f778191345" target="_blank"> See Credential URL</a></div>
                        </li>
                        <!-- ========== End Certification =========== -->
                    </ul>
                </div>
            </div>
            <!-- ========= End Certifications ========= -->

            <!--  ======= Start Languages =========-->
            <div class="bg-white mt-8 mx-2 p-1 shadow-sm rounded-sm ">
                <div class="flex items-center justify-between mb-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <div class="flex items-center my-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <svg class="h-7 w-7 " fill="none" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                <path d="m9.34 6.372.05.105 5.56 14.5a.755.755 0 0 1-.418.971.73.73 0 0 1-.91-.333l-.043-.092-1.433-3.737H5.06l-.094-.006-1.546 3.76a.73.73 0 0 1-.963.401.754.754 0 0 1-.427-.885l.033-.096 5.964-14.5a.73.73 0 0 1 1.314-.088Zm9.406-4.37a.75.75 0 0 1 .743.65l.007.1V7.5h1.75a.75.75 0 0 1 .743.649l.007.102a.75.75 0 0 1-.648.743L21.245 9l-1.75-.001v7.25a.75.75 0 0 1-.648.744l-.102.007a.75.75 0 0 1-.743-.648l-.007-.102V2.753a.75.75 0 0 1 .75-.75ZM8.81 8.748 5.65 16.286h6.11L8.81 8.747Zm1.937-6.744h5.498a.75.75 0 0 1 .743.648l.006.102v3.004c0 2.344-1.9 4.245-4.245 4.245a.75.75 0 0 1 0-1.5c1.46 0 2.654-1.14 2.74-2.578l.005-.167V3.503h-4.747a.75.75 0 0 1-.102-1.493l.102-.007h5.498-5.498Z" fill="#cc2426" class="fill-212121"></path>
                            </svg>
                        </span>
                        <span class="tracking-wide ">Languages</span>
                    </div>
                    <a href="#" class="main-modal flex justify-between p-2 text-sm text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
                        </svg>
                    </a>
                </div>
                <div class="text-zinc-700">
                    <ul class="list-inside text-xl">
                        <!-- ========== Start Language =========== -->
                        <li class="mb-3 border-b-2 pb-3">
                            <div class="flex justify-between">
                                <div class="text-teal-600">English</div>
                                <a href="#" class="p-2 text-theme-color duration-150 bg-white border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Delete">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                    </svg>
                                </a>
                            </div>
                            <div class="text-zinc-500 text-sm">Advanced</div>
                        </li>
                        <!-- ========== End Language =========== -->
                    </ul>
                </div>
            </div>
            <!-- ========= End Certifications ========= -->

            <!-- End Profile tab -->
        </div>

    </div>
    <!--===========Start Modal Add experience ==============-->
    <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center ">
        <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
            <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
                <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <span class="text-theme-color relative inline-block ">
                        <i class="lni lni-list"></i>
                    </span>
                    <span class="tracking-wide ">Add experience</span>
                </div>
                <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </a>
            </div>
            <div class="mt-2 text-sm text-left">
                <form action="">
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Title: Ex Software Engineer" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <select class="w-full px-4 py-3 border bg-gray-300 rounded-lg hover:border-ensias-red">
                            <option value="" class="text-gray-300">Employment type</option>
                            <option value="">Full-time</option>
                            <option value="">Part-time</option>
                            <option value="">Freelence</option>
                            <option value="">Contract</option>
                            <option value="">Internship</option>
                            <option value="">Apprenticeship</option>
                            <option value="">Seasonal</option>
                        </select>
                    </div>
                    <div class=" lg:w-2/2 mt-5  mb-3 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Company name" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                        <input type='city' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1 flex items-center">
                        <input type='checkbox' class=" mr-3 px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                        <label class="text-gray-600 font-light text-sm">I'm currently working in this role</label>
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">Start date</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">End date</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                        <textarea class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" rows="4" placeholder="Description"></textarea>
                    </div>
                    <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!--===========End Modal Add experience ==============-->

    <!--===========Start Modal Add education ==============-->
    <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center">
        <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
            <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
                <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <i class="lni lni-graduation"></i>
                        </span>
                    <span class="tracking-wide ">Add education</span>
                </div>
                <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </a>
            </div>
            <div class="mt-2 text-sm text-left">
                <form action="">
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="School name" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Degree: Ex Engineering" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Field of study: Software Engineering" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">Start date</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">End date (or expected)</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 mb-3 lg:mb-2 mx-1">
                        <textarea class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" rows="4" placeholder="Description"></textarea>
                    </div>
                    <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Save</button>
                </form>
            </div>
        </div>
    </div>
    <!--===========End Modal Add education ==============-->

    <!--===========Start Modal Add Certification ==============-->
    <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center">
        <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
            <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
                <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                        <span class="text-theme-color relative inline-block ">
                            <img src="assets/img/certificate_icon.svg" class="h-8 w-8 " alt="">
                        </span>
                    <span class="tracking-wide ">Add certification</span>
                </div>
                <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white" aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </a>
            </div>
            <div class="mt-2 text-sm text-left">
                <form action="">
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Name: Ex Microsoft certified network associate security" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Issuing organization: Ex Microsoft" />
                    </div>

                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1 flex items-center">
                        <input type='checkbox' class=" mr-3 px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" />
                        <label class="text-gray-600 font-light text-sm">This credential does not expire</label>
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">Issue date</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                    </div>
                    <div class=" lg:w-2/2 mt-5 lg:mb-2 mx-1">
                        <label class="text-gray-600 font-light text-sm">Expiration date</label>
                        <input type='date' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Location: Ex Kenitra, Morocco" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Credential date" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='url' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Credential URL" />
                    </div>
                    <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Submit</button>
                </form>
            </div>
        </div>
    </div>
    <!--===========End Modal Add Certification ==============-->

    <!--===========Start Modal Add Language ==============-->
    <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay ">
        <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl mt-140 px-3 rounded-xl shadow-xl text-gray-800">
            <div class="flex items-center justify-between space-x-2 font-semibold text-zinc-900 text-2xl">
                <div class="flex items-center mt-4 space-x-2 font-semibold text-zinc-900 text-2xl">
                    <span class="text-theme-color relative inline-block ">
                        <img src="assets/img/language_icon.svg" class="h-7 w-7 " alt="">
                    </span>
                    <span class="tracking-wide ">Add Language</span>
                </div>
                <a href="#" class="flex justify-between mt-2 p-1 text-sm text-theme-color duration-15 border-1 border-ensias-red rounded-full hover:bg-red-900 hover:text-white close-modal" aria-label="Edit">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </a>
            </div>
            <div class="mt-2 text-sm text-left">
                <form action="">
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Language name" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input type='text' class="w-full px-4 py-3 border bg-gray-300 rounded-lg text-gray-800 hover:border-ensias-red" placeholder="Level (Advanced,Intermediate or Beginner)" />
                    </div>
                    <button type="submit" class="w-full p-3 text-sm font-light text-white bg-theme-color rounded-lg shadow-md hover:bg-ensias-red mb-3">Add</button>
                </form>
            </div>
        </div>
    </div>
    <!--===========End Modal Add Language ==============-->

</div>

<!--====== PROFILE PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
