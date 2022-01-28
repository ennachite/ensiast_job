<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/taglibs.jsp" />
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/head.jsp" />

<!-- Title -->
<title>Modify ${ requestScope.offer.offerNamee }</title>
</head>
<body>
<%--Preloader--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/preloader.jsp" />

<%--Navbar--%>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/navbar.jsp" />

<!--====== JOB POSTS PART STARTS ======-->
<section class="pt-120 pb-120">
    <div class="">
        <div class="row justify-center">
            <div class="w-fully lg:w-1/2">
                <div class="section_title text-center pb-6">
                    <h4 class="main_title">Modify Job Offer</h4>
                </div>
                <!-- section title -->
            </div>
        </div>
        <!-- row -->
        <div class="row justify-center text-left w-12/12">
            <!-- ========== GRID START ============-->
            <div class="w-full sm:w-10/12 md:w-6/12 lg:w-12/12 h-12/12">
                <div class="grid_offer text-center mt-8 mx-3">
                    <h2 class="my-6 text-2xl font-semibold text-gray-700 text-left">
                        Forms
                    </h2>
                    <!-- General elements -->
                    <div class="justify-left text-left">
                        <form method="post">
                            <label class="block text-sm">
                                <span class="text-black">Offer name</span>
                                <input name="offer-name" type="text" value="${ requestScope.offer.offerName }" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Platform Engineer"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Salary/Month (MAD)</span>
                                <input name="offer-salary" type="number" value="${ requestScope.offer.offerSalary }" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Ex: 10000"
                                />
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Location</span>
                                <input name="offer-location" type="text" value="${ requestScope.offer.offerLocation }" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Country,City"/>
                            </label>

                            <label class="block text-sm my-4">
                                <span class="text-black">Domain</span>
                                <input name="offer-domain" type="text" value="${ requestScope.offer.offerDomain }" class="block w-full mt-1 h-8 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input" placeholder="Web development, Mobile development..."/>
                            </label>

                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700"> Types of employees </span>
                                <select name="job-type" value="${ requestScope.offer.jobType }" class="block w-full mt-1 text-sm pl-2 focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input h-8">
                                    <option value="Full-time">Full-time</option>
                                    <option value="Part-time">Part-time</option>
                                    <option value="Internship">Internship</option>
                                    <option value="Casual">Casual</option>
                                    <option value="Fixed term">Fixed term</option>
                                    <option value="Shiftworks">Shiftworks</option>
                                    <option value="Daily hire and weekly hire">Daily hire and weekly hire</option>
                                    <option value="Probation">Probation</option>
                                    <option value="Apprentices and trainees">Apprentices and trainees</option>
                                    <option value="Outworks">Outworks</option>
                                </select>
                            </label>

                            <label class="block mt-4 text-sm">
                                <span class="text-gray-700">Description</span>
                                <textarea name="description" class="block w-full mt-1 text-sm focus:border-ensias-red focus:border-2 border-2 border-gray-400 rounded-md form-input p-2 h-260 pb-5" rows="3" placeholder="Enter the description of the offer" >${ requestScope.offer.offerDescription }</textarea>
                            </label>

                            <a class="flex items-center justify-center p-4 mb-8 text-sm font-semibold text-white bg-ensias-red rounded-lg shadow-md focus:outline-none mt-3" href="companyProfile.html">
                                <button type="submit">Submit</button>
                                <div class="flex items-center">
                                    <span></span>
                                </div>
                            </a>
                        </form>
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