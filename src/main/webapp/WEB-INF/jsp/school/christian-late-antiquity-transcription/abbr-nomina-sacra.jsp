<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Christian Late Antiquity: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 3: Abbreviations: Nomina Sacra"/>
	<tiles:putAttribute name="previousSection" value="abbr-suspensions"/>	
	<tiles:putAttribute name="nextSection" value="exercises"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">		
				<p>
					The <b><i>nomina sacra</i></b> are a small set of standard abbreviations for names of 
					the deity. These are abbreviations by contraction. The <i>nomina sacra</i> usually 
					have a horizontal line over the whole abbreviation to mark it as such.
				</p>

				<p>
					<span class="overline">DS</span> stands for <i>deus</i>. The final <b>S</b> changes when the 
					word is inflected, so, for example <span class="overline">DM</span> = <i>deum</i>,
					<span class="overline">DO</span> = <i>deo</i>, and <span class="overline">DI</span> = <i>dei</i>.
				</p>
      
				<p>
					<span class="overline">DNS</span>, on the other hand, stands for <i>dominus</i>. It, 
					too, changes its last letter according to the requirements of inflection (<span class="overline">DNI</span>, 
					<span class="overline">DNO</span>, <span class="overline">DNM</span>).
				</p> 
      
				<p>
					Be especially careful not to confuse <span class="overline">DS</span> and <span class="overline">DNS</span>. 
					It may help to remember: <span class="overline">DS</span> = two letters standing for a two-syllable word; 
					<span class="overline">DNS</span> = three letters standing for a three-syllable word.
				</p>
      
				<p>
					<span class="overline">IHS</span> and <span class="overline">XPS</span> are <i>nomina sacra</i> for 
					Jesus's name, with the added complication that they are mixed Greek abbreviations used to represent the 
					Latin forms of the names. The IH in <span class="macronTitulus">IHS</span> are <i>iota</i> and <i>eta</i>. 
					(Sometimes the <b>S</b> is written <b>C</b>, to represent the Greek <i>sigma</i>.) In <span class="overline">XPS</span>, 
					<b>X</b> is <i>chi</i>, normally spelled <b>CH</b> in Latin, and <b>P</b> is the Greek letter <i>rho</i>. Despite the Greek 
					letters, you should expand these abbreviations in Latin, as follows:
				</p> 
      
				<p>
					<span class="overline">IHS</span> = ie(su)s &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="overline">XPS</span> = chr(istu)s
				</p>
      
				<p>
					Note that you do not put the <b>e</b> in <i>iesus</i> in parentheses when you expand, because it is 
					present in the abbreviation's <b>H</b> (eta), and you do not put the <b>h</b> in <i>christus</i> in parentheses because 
					<b>ch</b> together are represented by <b>X</b> in the abbreviation.
				</p>
      
				<p>
					(Note: You do sometimes find medieval scribes spelling Jesus "<i><b>ihesus</b></i>", which probably arose from 
					a misunderstanding of the IHS abbreviation. If your scribe consistently spells out <i>ihesus</i> with the <b>h</b>,
					then you may expand that scribe's IHS abbreviation with an <b>h</b> in it, too, but not otherwise!)
				</p> 

				<p>
					As with <span class="overline">DS</span> and <span class="overline">DNS</span>, <span class="overline">IHS</span> 
					and <span class="overline">XPS</span> change their last letter according to the inflection of the word.
					Thus <span class="overline">IHU</span> is used for <i>iesu</i> (the form for all cases of <i>iesus</i> other 
					than nominative), and we find <span class="overline">XPI</span>, <span class="overline">XPO</span>, 
					<span class="overline">XPM</span> as needed.
				</p> 
      
				<p>
					The other two most common <i>nomina sacra</i> are those for the Holy Spirit: <span class="overline">SPS</span> 
					<span class="overline">SCS</span> = <i>spiritus sanctus</i>. Both abbreviations also change their last letter 
					for inflection, and you will of course find them used separately as well as together.
				</p> 
      
				<p>When you have digested all this, click through to try some practice exercises in expanding abbreviations.</p>
				<p>&nbsp;</p>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertTemplate>