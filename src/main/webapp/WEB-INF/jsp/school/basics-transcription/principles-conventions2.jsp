<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<c:set var="lessonIndex" scope="request">
	<%@ include file="lessonIndex.jsp" %>
</c:set>

<tiles:insertTemplate template="/WEB-INF/jsp/school/lesson-template.jsp">
	<tiles:putAttribute name="lessonName" value="Basics: Transcription"/>
	<tiles:putAttribute name="sectionName" value="Section 4: Transcription Principles and Conventions, continued"/>	
	<tiles:putAttribute name="previousSection" expression="exercise"/>	
	<tiles:putAttribute name="nextSection" expression="transcription-conventions"/>	
	<tiles:putAttribute name="lessonIndex" value="${lessonIndex}"/>
	
	<tiles:putAttribute name="lessonContent">
		<div class="row">
			<div class="col-lg-12">
				<p>
					If you follow the principles discussed in the last section, you should end up with a 
					text that you can read fairly easily, because it has modern word separation, and 
					you will also have recorded any peculiarities of your scribe's usage, variations in 
					the text being copied, and any variations introduced by the scribe in the process of copying.
				</p>
    
				<p>
					In addition to these basic features of the text in your manuscript, you also need to 
					record any changes, additions, deletions, or corrections made by the main scribe or 
					another early hand, and any places where the manuscript is damaged or where for some 
					other reason you can't make out what it says. Here are the principles and conventions 
					for doing that. (We will review and practice these in the coming lessons, so read through 
					them now, but don't worry if this seems like too much detail.)
				</p>
				<p>&nbsp; </p>
				<h4 class="lessonSubheading">RECORDING INSERTIONS AND DELETIONS</h4>
				<p>
					Principle: <strong>DO indicate when you are supplying letters that the scribe left out or 
					that are illegible in the manuscript.</strong>
				</p>

				<p><b>Expanding abbreviations:</b></p> 
            
				<p>
					When the scribe abbreviates a word, expand the abbreviation and indicate what part of the 
					word is your expansion by putting those words in parentheses. We will practice this in the 
					next section, and more details about how to work with abbreviations are provided in subsequent 
					transcription lessons.
				</p> 
            
				<p>
					<b>Example:</b> In this late-antique manuscript of Virgil, the scribe uses just one 
					abbreviation: for enclitic -<i>que</i>, he writes <b>Q</b> with a medial dot after it. When you 
					transcribe his <b>Q&#8226;</b>, you will expand the abbreviation, but put in parentheses the letters 
					that the scribe omitted through abbreviation. So here, for example, the manuscript says: 
					<b>TOTIDEMQ&#8226;</b> but you, following the rule not to transcribe a  text all in capitals, will 
					expand this as <b>totidemq(ue)</b>
				</p> 
              
				<div><!-- centering image is not working yet!! -->
					<img src="${pageContext.request.contextPath}/static/img/school/basics-transcription/StGall1394line2detail.jpg" class="img-responsive centered-image" width="1000" height="62" alt="Line 2 detail from St. Gall 1394 manuscript"> 
               		<p class="text-center">line 2 detail from <small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 1394, p. 12. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a>)</em></small></p>
				</div>
				<hr />
				<p><b>Scribal corrections:</b></p> 

				<p>
					If the scribe has erased something, indicate the erasure with square brackets: [ ]. If the scribe 
					made a correction over the erasure and you can tell what the erased letter was, you can indicate 
					that by putting a slash between the erased letter and the correction inside the brackets. For example, 
					if the scribe wrote <b>h</b> instead of <b>d</b> at the beginning of the word <b>domini</b> 
					and then caught his error, erased the <b>h</b>, and replaced it with a <b>d</b>, you would write: 
<b>[h/d]omini</b>. If the scribe entered a correction over the erasure but you can't tell what the erased 
					letter was, leave the first part blank: <b>[ /d]omini</b>
				</p>
              
				<p>
					<b>Example:</b> In this Carolingian manuscript, the scribe, or one contemporary with the 
					original writing, has written an abbreviated <b>tamen</b> over an erasure. We can't see at all 
					what was there before the  erasure and correction.
				</p>
				 
				<img src="${pageContext.request.contextPath}/static/img/school/basics-transcription/StGall152line10detail.jpg" width="1000" height="87" class="img-responsive centered-image" alt="Line 10 detail from St. Gall manuscript 152"> 
				<p class="text-center">line 10 detail from <small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 152, p. 1. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a> )</em></small></p>
     
				<p>
					You need to record that this is a correction over an erasure, <i>and&nbsp;</i> you need to expand the 
					abbreviation. So we put the whole thing in single square brackets, with a slash before the 
					<b>tamen</b> to show that something was erased before it was written, and with parentheses 
					around the <i>en</i> part to show that the scribe omitted those letters in abbreviation. 
					(We'll learn more about how to recognize abbreviations like this in future lessons.) So you would transcribe:
				</p>             

				<p class="text-center"><b>[/tam(en)]</b></p> 

				<p><b>Scribal insertions:</b></p>  
            
				<p>
					If the scribe has added letters to the manuscript on the line of writing 
					(i.e., in line with the other letters), put the scribe's insertions in between downward-slanting lines: / \ 
				</p>  
            
				<p>
					If the scribe has added something between the lines, put the scribe's insertions in between 
					upward-slanting lines like this: \ / 
				</p>  
            
				<p>
					If the scribe has made an insertion in the margins, put the marginal addition in between 
					double upward-slanting lines like this: \\ //
				</p>   
            
				<p>We'll look at examples of these kinds of insertions in future lessons.</p>  
            
				<p><b>Illegible letters:</b></p> 
            
				<p>
					If letters are illegible or invisible in the manuscript, put double square brackets [[ ]] 
					around the illegible portion. If you can make a guess with a fair degree of confidence about 
					what the missing letters are based on what you can still make out, put the damaged letter(s) 
					within the brackets. If you can't read the missing letter(s) at all but can see how many there 
					probably were, put asterisks in square brackets [[***]], with the number of asterisks indicating 
					your best guess at the number of missing letters.
				</p>  
            
				<p>
					<b>Example:</b> At the beginning of the first line of this manuscript (the same Vergil 
					manuscript as above), we can see that there is a damaged letter before the first clear <b>e</b>,
					but we really can't tell what that letter might have been. 
				</p>
				 
				<img src="${pageContext.request.contextPath}/static/img/school/basics-transcription/StGall1394line1detail.jpg" width="1000" height="113" class="img-responsive centered-image" alt="Line 1 detail from St. Gall 1394 manuscript">
				<p class="text-center">line 1 detail from <small><em>St. Gallen, Stiftsbibliothek, Cod. Sang. 1394, p. 12. (<a href= "http://www.e-codices.unifr.ch" target="_blank">www.e&#8209;codices.unifr.ch</a> )</em></small> </p>
				<p>
					There may have been letters before that, but we will just indicate the one we can tell was 
					there, but can't make sense of. So here we would transcribe the beginning of this line: 
					<b>[[*]]enum</b> &#8212; double brackets to indicate letters rendered illegible from 
					damage to the manuscript, and one asterisk to indicate that we can definitely see one letter missing.
				</p>

				<p>
					Important note: If you know your Vergil or the meter of the line, you'll realize there is much more 
					than one letter missing. But we are just recording what we can see, not what we conjecture ought to be there. 
				</p>
				<p>&nbsp;</p>
			</div>
		</div>		
	</tiles:putAttribute>
</tiles:insertTemplate>