<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.student.firstName }'s Home</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp" />

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="row justify-center">
        <div class="w-fully lg:w-1/2">
            <div class="section_title text-center pb-6">
                <h4 class="text-3xl md:text-5xl font-semibold mt-4">Be <span class="text-ensias-red">patient </span><br> good things take time</h4>
            </div>
            <!-- section title -->
        </div>
    </div>
    <!-- row -->
    <div class="row justify-center text-left w-12/12">
        <!-- ========== GRID START ============-->
        <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
            <div class="grid_offer text-center mt-8 mx-3 ">
                <h2 class="my-6 text-2xl font-semibold text-gray-700">
                    All candidatures
                </h2>

                <div class="w-full overflow-hidden rounded-lg shadow-xs">
                    <div class="w-full overflow-x-auto">
                        <table class="w-full whitespace-no-wrap">
                            <thead>
                            <tr class="text-xs font-semibold tracking-wide text-red-700 uppercase border-b  bg-gray-50 text-center ">
                                <th class="px-4 py-3">Offer name</th>
                                <th class="px-4 py-3">Details</th>
                                <th class="px-4 py-3">My motivation</th>
                                <th class="px-4 py-3">Date of candidacy</th>
                                <th class="px-4 py-3">Status</th>
                            </tr>
                            </thead>
                            <tbody class="bg-white divide-y ">
                            <c:forEach items="${ requestScope.studentCandidacies }" var="candidacy">
                                <!-- =============== Line START ===============-->
                                <tr class="text-gray-700">
                                    <td class="px-4 py-3">
                                        <div class="flex items-center text-sm">
                                            <!-- Avatar with inset shadow -->
                                            <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                                <img class="object-cover w-full h-full rounded-full" src="http://localhost/${ candidacy.companyPicture }" alt="" loading="lazy" />
                                                <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                            </div>
                                            <div>
                                                <p class="font-semibold">${ candidacy.offerName }</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        <a href="#" class="main-modal">Click to see more</a>

                                        <!--===========Start Modal==============-->
                                        <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
                                            <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl z-20 py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                                <div class="flex justify-end items-center">
                                                    <svg class="h-7 w-7 cursor-pointer p-1 hover:bg-red-700 hover:text-white rounded-full text-red-900 close-modal " fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                                    </svg>
                                                </div>
                                                <!-- ========== GRID START ============-->
                                                <div class="w-full ">
                                                    <h2 class="mb-6 text-3xl font-bold text-red-700">${ candidacy.offerName }</h2>
                                                    <!-- General elements -->
                                                    <div class="justify-left text-left">
                                                        <p class="pb-2 flex ">
                                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-red-700 mr-1" viewBox="0 0 20 20" fill="currentColor">
                                                                <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path>
                                                            </svg>
                                                            ${ candidacy.offerLocation }
                                                        </p>
                                                        <p class="pb-2 flex ">
                                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-red-700 mr-1" viewBox="0 0 20 20" fill="currentColor">
                                                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z" clip-rule="evenodd"></path>
                                                            </svg>
                                                                ${ candidacy.offerJobType }
                                                        </p>
                                                        <p>${ candidacy.offerDescription }</p>

                                                    </div>
                                                </div>
                                                <!-- ========== GRID END ============-->
                                            </div>
                                        </div>
                                        <!--===========End Modal==============-->

                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        <a href="#" class="main-modal">Click to see more</a>

                                        <!--===========Start Modal==============-->
                                        <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
                                            <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl z-20 py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                                <div class="flex justify-between items-center">
                                                    <h4 class="text-xl font-bold text-red-900 pl-1">My motivation</h4>
                                                    <svg class="h-7 w-7 cursor-pointer p-1 hover:bg-red-700 hover:text-white rounded-full text-red-900 close-modal " fill="currentColor" viewBox="0 0 20 20">
                                                        <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                                    </svg>
                                                </div>
                                                <div class="mt-2 text-sm text-left">
                                                    <p>${ candidacy.motivation }</p>
                                                </div>
                                            </div>
                                        </div>
                                        <!--===========End Modal==============-->

                                    </td>
                                    <td class="px-4 py-3 text-sm">${ candidacy.dateCandidacy }</td>
                                    <td class="px-4 py-3 text-sm">
                                        <span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full ">${ candidacy.candidacyStatus }</span>
                                    </td>
                                </tr>
                                <!-- =============== Line END ===============-->
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
            <!-- ========== GRID END ============-->
        </div>
    </div>
</section>
<!--====== JOB POSTS PART END ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />