<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp"%>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Carolingian Manuscripts: Paleography" />
	<tiles:putAttribute name="sectionName" value="Section 4:  Exercise" />
	<tiles:putAttribute name="sectionDescription" value="" />
	<tiles:putAttribute name="previousSection" value="hierarchy-scripts" />
	<tiles:putAttribute name="nextSection" value="codicological-features" />
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}" />

	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
					<p>Do you remember the distinctive letterforms of Insular minuscule? Can you tell Caroline Minuscule from Insular Minuscule? Hints: look for the distinctive <b>g</b> of each script, the distinctive <b>r</b> of Insular scripts, and look for the descenders that are characteristic of Insular Minuscule.</p>
      <p>For each word below, identify whether it is Insular or Caroline:</p>
<div class="row">
	<div class="col-lg-4">
  
 <img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/1strictis.png" alt="the word strictis">
  <b>strictis</b>
	</div>

<div class="col-lg-4">
<!--<p>Caroline or Insular?</p>-->

</div>
<div class="col-lg-4">
<div class="row">
	<div class="col-lg-12">
	<button class="btn left school showAnswer">Display the Answer</button>
	<span class="exerciseAnswer">
	<p>Caroline</p>
	<hr />	
    </span>
   	 </div>
	</div>
</div>
</div>
<p>&nbsp;</p>


	<p></p>
    <div class="row">
    	<div class="col-lg-4">
  
<img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/2plurimos.png" alt="the word plurimos">
       <b>plurimos</b>

</div>
<div class="col-lg-4">
	<!--<p>Caroline or Insular?</p>-->
    <p>&nbsp;</p>
    
</div>
<div class="col-lg-4">
<div class="row">
<div class="col-lg-12">
<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p>Caroline</p>
<hr />
</span>
    </div>
</div>
</div>
</div>

	<p>&nbsp;</p>
    <div class="row">
    	<div class="col-lg-4">
   
<img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/3fugiant.png" alt="the word fugiant">
      <b>fugiant</b>

</div>
<div class="col-lg-4">
	<!--<p>Caroline or Insular?</p>-->
    <p></p>
    
</div>
<div class="col-lg-4">
<div class="row">
<div class="col-lg-12">
<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p>Insular</p>
<hr />
</span>
    </div>
</div>
</div>
</div>
	<p>&nbsp;</p>
    <div class="row">
    	<div class="col-lg-4">
      
<img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/4longissimum.jpg" alt="the word longissimum">
   <b>longissimum</b>

</div>
<div class="col-lg-4">
	<!--<p>Caroline or Insular?</p>-->
    <p>&nbsp;</p>
    
</div>
<div class="col-lg-4">
<div class="row">
<div class="col-lg-12">
<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p>Caroline</p>
<hr />
</span>
    </div>
</div>
</div>
</div>
	<p>&nbsp;</p>
    <div class="row">
    	<div class="col-lg-5">
       
<img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/5confiteantur.png" alt="the word confiteantur">
  <b>confiteantur</b>

</div>
<%--<div class="col-lg-4">
	<p>Caroline or Insular?</p>
    <p>&nbsp;</p>
    
</div>
--%>
<div class="col-lg-6">
<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p>Insular</p>
<hr />
</span>
    </div>

</div>

	<p>&nbsp;</p>
    <div class="row">
    	<div class="col-lg-4">
         
<img src="${pageContext.request.contextPath}/static/img/school/caroligian-paleography/6frater.jpg" alt="the word frater">
<b>frater</b>
</div>
<div class="col-lg-4">
	<!--<p>Caroline or Insular?</p>-->
    <p>&nbsp;</p>
    
</div>
<div class="col-lg-4">

<button class="btn left school showAnswer">Display the Answer</button>
<span class="exerciseAnswer">
<p>Caroline</p>
<hr />
</span>
    </div>
</div>
</div>
</div>
			<p>&nbsp; </p>
	</tiles:putAttribute>
</tiles:insertTemplate>