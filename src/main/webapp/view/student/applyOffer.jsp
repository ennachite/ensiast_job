<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title> ${ requestScope.offer.offerName } details</title>
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
                <h4 class="main_title">Offer Details</h4>
            </div>
            <!-- section title -->
        </div>
    </div>
    <!-- row -->
    <div class="row justify-center text-left w-12/12">
        <!-- ========== GRID START ============-->
        <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
            <!-- ============ Start Card ============== -->
            <div class="py-6 bg-gray-50 border-b-2 border-b-gray-200 shadow-md focus:outline-none">
                <div class="flex justify-between m-2 mr-0 pl-3">
                    <div class="flex justify-items-center">
                        <c:choose>
                            <c:when test="${ requestScope.offer.companyPicture != null }">
                                <img src="http://localhost/${ requestScope.offer.companyPicture }" alt="company-logo" class="border-gray-200 border-2 rounded-lg mr-4 text-center" width="130px" height="100px">
                            </c:when>
                            <c:otherwise>
                                <img src="${pageContext.request.contextPath}/assets/img/company.png" alt="company-logo" class="border-gray-200 border-2 rounded-lg mr-4 text-center" width="130px" height="100px">
                            </c:otherwise>
                        </c:choose>
<%--                        <img src="${  }" alt="" class="border-gray-200 border-2 rounded-lg mr-4 text-center" width="130px" height="100px">--%>
                        <div class=" grid grid-cols-1 justify-center">
                            <h2 class="text-red-900 font-semibold pt-6 pb-0 ">${ requestScope.offer.offerName }</h2>
                            <div class="flex justify-center text-gray-400 text-lg pb-3">

                                <div class="flex items-center mr-12 ">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" viewBox="0 0 20 20" fill="currentColor">
                                        <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path>
                                    </svg>
                                    <p>${ requestScope.offer.offerLocation }</p>
                                </div>
                                <div class="flex items-center">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>
                                    <p>${ requestScope.offer.jobType }</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="m-4">
                        <button type="button" class="px-2 py-2 text-sm font-medium leading-5 bg-red-50 text-ensias-red rounded-lg hover:bg-ensias-red hover:text-white focus:outline-none">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                <path fill-rule="evenodd" d="M3.172 5.172a4 4 0 015.656 0L10 6.343l1.172-1.171a4 4 0 115.656 5.656L10 17.657l-6.828-6.829a4 4 0 010-5.656z" clip-rule="evenodd"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <!-- ============ End Card ============== -->
            <!-- ============ Start Card 2 ============== -->
            <div class="p-6 bg-gray-50 mb-4 shadow-md focus:outline-none">
                <h4>Description</h4>
                <p>${ requestScope.offer.offerDescription }</p>
            </div>
            <!-- ============ End Card 2 ============== -->
            <!-- ============ Start Card 3 ============== -->
            <div class="p-6 bg-gray-50 mt-8 shadow-md focus:outline-none">
                <h4>Apply for the offer</h4>
                <form method="post" action="/apply-offer?offerId=${ requestScope.offer.offerId }" enctype="multipart/form-data">
                    <div class=" lg:w-2/2  mb-3 mt-5 lg:mb-2 mx-1">
                        <input name="github-username" type='text' class="w-full mb-2 px-4 py-3 border rounded-lg text-gray-700 hover:border-ensias-red" placeholder="Github Username" />
                    </div>
                    <div class=" lg:w-2/2  mb-3 lg:mb-2 mx-1">
                        <label class="w-64 flex flex-col items-center mb-5 px-4 py-1 bg-white rounded-lg border hover:border-ensias-red">
                            <svg class="w-8 h-8" fill="currentColor" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M16.88 9.1A4 4 0 0 1 16 17H5a5 5 0 0 1-1-9.9V7a3 3 0 0 1 4.52-2.59A4.98 4.98 0 0 1 17 8c0 .38-.04.74-.12 1.1zM11 11h3l-4-4-4 4h3v3h2v-3z"></path>
                            </svg>
                            <span class=" text-base leading-normal">Upload CV</span>
                            <input name="cv-file" type='file' class="hidden" accept="image/*,.pdf,.doc,.docx,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" />
                        </label>

                    </div>
                    <div class=" lg:w-2/2  mt-3 lg:mb-2 mx-1">
                        <textarea name="motivation" class=" w-full mb-2 px-4 py-3 border rounded-lg text-gray-700 hover:border-ensias-red h-260" rows="3" placeholder="Your motivation about the offer" ></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="w-full py-3 px-6 my-4 text-sm font-bold border-2 border-ensias-red leading-5 bg-ensias-red text-white rounded-lg hover:bg-white hover:text-ensias-red">
                            Apply Now
                        </button>
                    </div>
                </form>
            </div>

            <!-- ============ End Card 3 ============== -->

        </div>
    </div>
    <!-- ========== GRID END ============-->
</section>
<!--====== JOB POSTS PART END ======-->

<%--Footer--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/footer.jsp" />