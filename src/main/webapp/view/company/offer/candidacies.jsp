<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ sessionScope.company.companyName }'s Home</title>
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
                <h4 class="main_title">Job Offer Candidacies</h4>
            </div>
            <!-- section title -->
        </div>
    </div>
    <!-- row -->
    <div class="row justify-center text-left w-12/12">
        <!-- ========== GRID START ============-->
        <div class="w-full sm:w-10/12 lg:w-12/12 h-12/12">
            <div class="grid_offer text-center mt-8 mx-3 ">
                <h2 class="my-6 text-2xl font-semibold text-gray-700">All candidatures</h2>

                <div class="w-full overflow-hidden rounded-lg shadow-xs">
                    <div class="w-full overflow-x-auto">
                        <table class="w-full whitespace-no-wrap">
                            <thead>
                                <tr class="text-xs font-semibold tracking-wide text-red-700 uppercase border-b  bg-gray-50 text-center ">
                                    <th class="px-4 py-3">Candidate</th>
                                    <th class="px-4 py-3">Github link</th>
                                    <th class="px-4 py-3">Motivation</th>
                                    <th class="px-4 py-3">CV</th>
                                    <th class="px-4 py-3">Date of candidacy</th>
                                    <th class="px-4 py-3">Accept/Reject</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y ">
                                <c:forEach items="${ requestScope.candidacies }" var="candidacy">
                                <!-- =============== Start Line ===============-->
                                <tr class="text-gray-700">
                                    <td class="px-4 py-3">
                                        <div class="flex items-center text-sm">
                                            <!-- Avatar with inset shadow -->
                                            <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                                <img class="object-cover w-full h-full rounded-full" src="http://localhost/${ candidacy.studentPicture }" alt="" loading="lazy" />
                                                <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                            </div>
                                            <div>
                                                <a class="font-semibold" href="<c:url value="/other-profile?studentId=${candidacy.studentId}" />">${ candidacy.studentName }</a>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        <a href="<c:url value="https://github.com/${ candidacy.githubUsername }" />" target="_blank">${ candidacy.githubUsername }</a>
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        <a href="#" class="main-modal">Click to see more</a>

                                        <!--===========Start Modal==============-->
                                        <div class="bg-black bg-opacity-50 absolute inset-0 hidden justify-center items-center overlay">
                                            <div class="bg-gray-200  w-11/12 lg:w-full max-w-xl z-20 py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                                <div class="flex justify-between items-center">
                                                    <h4 class="text-lg font-bold text-red-900 pl-1">About candidate motivation</h4>
                                                    <svg class="h-6 w-6 cursor-pointer p-1 hover:bg-gray-300 rounded-full text-red-900 close-modal" fill="currentColor" viewBox="0 0 20 20">
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
                                    <td class="px-4 py-3 text-sm"><a href="http://localhost/${ candidacy.studentCV }" class="underline" target="_blank">${candidacy.studentName}_CV</a></td>
                                    <td class="px-4 py-3 text-sm">${ candidacy.dateCandidacy }</td>
                                    <td class="px-4 py-3">
                                        <c:choose>
                                            <c:when test="${ candidacy.candidacyStatus.equals('Accepted') }">
                                                <span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full ">Approved</span>
                                            </c:when>
                                            <c:when test="${ candidacy.candidacyStatus.equals('Rejected') }">
                                                <span class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full ">Rejected</span>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="flex justify-center text-sm">
                                                    <a href="<c:url value="/modify-candidacy-status?candidacyId=${ candidacy.candidacyId }&candidacyStatus=1" />">
                                                        <button class="flex items-center justify-between mr-4 px-2 py-2 text-sm font-medium leading-5 text-gray-500 rounded-lg hover:border-green-700 hover:border-2 " aria-label="Edit">
                                                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                                                            </svg>
                                                        </button>
                                                    </a>

                                                    <button class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-gray-500 rounded-lg hover:border-red-700 hover:border-2 main-modal" aria-label="Delete">
                                                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                                                        </svg>
                                                    </button>

                                                    <!--===========Start Modal==============-->
                                                    <div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
                                                        <div class="bg-gray-200 max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800">
                                                            <div class="justify-center items-center">
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"></path>
                                                                </svg>
                                                                <h4 class="text-lg font-bold">Are you sure?</h4>
                                                            </div>
                                                            <div class="mt-2 text-sm">
                                                                <p>
                                                                    Do you really want to decline this candidate? This process
                                                                    cannot be undone
                                                                </p>
                                                            </div>
                                                            <div class="mt-3 flex justify-center space-x-3">
                                                                <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                                                                    Cancel
                                                                </button>
                                                                <a href="<c:url value="/modify-candidacy-status?candidacyId=${ candidacy.candidacyId }&candidacyStatus=0" />">
                                                                    <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                                                                        Decline
                                                                    </button>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--===========End Modal==============-->
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                                <!-- =============== Start Line ===============-->
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