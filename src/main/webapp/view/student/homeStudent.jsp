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
<section id="services" class=" pt-120 pb-120">
    <div class="container">
        <div class="section_title text-center pb-9 mx-200">
            <h4 class="text-3xl md:text-5xl font-semibold mt-4">Choose a <span class="text-ensias-red">job</span>
                you <span class="text-ensias-red">love<br></span>and you will never have to work a day in your life
            </h4>
        </div>
        <div class="flex justify-center">
            <div class="w-full mx-200 ">

                <!-- section title -->

                <div class=" m-0">
                    <div class="grid grid-cols-1 mb-4">
                        <c:forEach items="${ requestScope.offers }" var="offer">
                            <!-- ============ Start Card ============== -->
                            <div class="py-6 bg-gray-50 rounded-lg mb-4 shadow-md focus:outline-none hover:shadow-red-200">
                                <div class="flex justify-between m-2 mr-0 pl-3">
                                    <div class="flex justify-items-center">
                                        <c:choose>
                                            <c:when test="${ offer.companyPicture != null }">
                                                <img src="http://localhost/${ offer.companyPicture }" alt="company-logo" class="border-gray-200 border-2 rounded-lg mr-4 text-center" width="130px" height="100px">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${pageContext.request.contextPath}/assets/img/company.png" alt="company-logo" class="border-gray-200 border-2 rounded-lg mr-4 text-center" width="130px" height="100px">
                                            </c:otherwise>
                                        </c:choose>
                                        <div class="grid grid-cols-1 justify-center">
                                            <a href="<c:url value="/apply-offer?offerId=${ offer.offerId }" />" class="pb-0">
                                                <h2 class="text-red-900 font-semibold pt-6 pb-0 ">${ offer.offerName }</h2>
                                            </a>
                                            <a href="<c:url value="/other-profile?companyId=${ offer.companyId }" />" class="pb-2">
                                                <h4 class="text-gray-500 font-medium">${ offer.companyName }</h4>
                                            </a>
                                            <div class="flex justify-center text-gray-400 text-lg">
                                                <div class="flex items-center mr-12 ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" viewBox="0 0 20 20" fill="currentColor">
                                                        <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path>
                                                    </svg>
                                                    <p>${ offer.offerLocation }</p>
                                                </div>
                                                <div class="flex items-center">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                                    </svg>
                                                    <p>${ offer.jobType }</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <div class="flex m-4">

                                            <button type="button" class="px-4 py-2 mx-2 mt-4 text-sm font-medium leading-5 bg-red-50 text-ensias-red rounded-lg hover:bg-ensias-red hover:text-white focus:outline-none">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                                    <path fill-rule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clip-rule="evenodd"></path>
                                                </svg>
                                            </button>
                                            <div class="text-center">
                                                <button type="button" class="flex py-3 px-6 mx-4 mt-4 text-sm font-bold border-2 border-ensias-red leading-5 bg-ensias-red text-white rounded-lg hover:bg-white hover:text-ensias-red focus:outline-none">
                                                    <a href="<c:url value="/apply-offer?offerId=${ offer.offerId }" />" class="pr-1">Apply Now</a>
                                                </button>
                                                <!-- </a> -->
                                            </div>
                                        </div>
                                        <div class="grid text-sm justify-items-end col-span-2 pr-6">
                                            <p>${ offer.postTime }</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============ End Card ============== -->
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- row -->
            <div class="row justify-center">

            </div>
        </div>
    </div>
</section>
<!--====== JOB POSTS PART ENDS ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />
