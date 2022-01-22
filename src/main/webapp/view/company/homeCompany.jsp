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
<section id="services" class="services_area pt-120 pb-120">
    <div class="container">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">All offers posted by ${ sessionScope.company.companyName }</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center">
            <c:forEach items="${ requestScope.offers }" var="offer">
                <!-- ========== GRID START ============-->
                <div class="w-full sm:w-10/12 md:w-6/12 lg:w-3/12">
                    <div class="grid_offer text-center mt-8 mx-3">
                        <p class="text-left pl-1 font-thin">${ offer.postTime }</p>

                        <div class="pt-3 relative inline-block">
                            <img src="https://img.icons8.com/ios/50/000000/find-matching-job.png" class="h-10 w-10" alt="job offer" />
                        </div>
                        <div class="mt-3 xl:mt-10">
                            <h4 class="text-black font-semibold text-sm md:text-2xl lg:text-xl xl:text-3xl pb-3" >
                                ${ offer.offerName }
                            </h4>
                            <p class="text-left flex justify-left border-r-4 border-white">
                                <span>${ offer.offerLocation }</span>
                            </p>
                            <p class="pb-1 text-left flex justify-left border-r-4 border-white" >
                                <span>${ offer.jobType }</span>
                            </p>
                            <p class="pb-1 text-left flex justify-left border-r-4 border-white" >
                                <span>${ offer.offerDomain }</span>
                            </p>
                        </div>
                        <!-- Start Menu of the grid-->
                        <div class="flex flex-row items-center mt-3 border-t border-gray-300 justify-center">
                            <a class="flex items-center justify-center w-12 h-12 mt-2 rounded hover:bg-ensias-red hover:text-white" href="offerDetails.html" >
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 stroke-current" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v3m0 0v3m0-3h3m-3 0H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                            </a>
                            <a class="flex items-center justify-center w-12 h-12 mt-2 rounded hover:bg-ensias-red hover:text-white" href="candidacies.html" >
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 stroke-current" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                                </svg>
                            </a>
                            <a class="flex items-center justify-center w-12 h-12 mt-2 rounded hover:bg-ensias-red hover:text-white" href="modifyJobOffer.html" >
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                </svg>
                            </a>
                            <a class="flex items-center justify-center w-12 h-12 mt-2 rounded hover:bg-ensias-red hover:text-white main-modal" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                </svg>
                            </a>
                            <!--===========Start Modal==============-->
                            <div class="bg-black bg-opacity-70 absolute inset-0 hidden justify-center items-center overlay">
                                <div class="bg-gray-200 max-w-sm max-h-lg py-2 px-3 rounded-xl shadow-xl text-gray-800" >
                                    <div class="justify-center items-center">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 -m-1 flex items-center text-red-500 mx-auto" fill="none" viewBox="0 0 24 24" stroke="currentColor" >
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" class="w-11 h-11 flex items-center text-red-500 mx-auto" viewBox="0 0 20 20" fill="currentColor">
                                            <path fill-rule="evenodd" d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z" clip-rule="evenodd"></path>
                                        </svg>
                                        <h4 class="text-lg font-bold">Are you sure?</h4>
                                    </div>
                                    <div class="mt-2 text-sm">
                                        <p>
                                            Do you really want to delete this offer? This process
                                            cannot be undone
                                        </p>
                                    </div>
                                    <div class="mt-3 flex justify-center space-x-3">
                                        <button class="px-3 py-1 rounded hover:bg-ensias-red hover:text-white border-2 border-gray-300 close-modal">
                                            Cancel
                                        </button>
                                        <button class="px-3 py-1 bg-red-800 text-gray-200 hover:bg-ensias-red rounded">
                                            Delete
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!--===========End Modal==============-->
                        </div>
                        <!-- End Menu of the grid-->
                    </div>
                </div>
                <!-- ========== GRID END ============-->
            </c:forEach>
        </div>
    </div>
</section>
<!--====== JOB POSTS PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />