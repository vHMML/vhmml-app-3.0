
<div class="row">
	<div class="col-lg-12">
		<h2>
			<span class="redtext italicstext">v</span>HMML School Help
		</h2>
		<p>
			<span class="redtext italicstext">v</span>HMML is a work in progress.
			As you use it, please let us know what should be corrected or
			augmented. We welcome suggestions for features that you would find
			useful in future releases. Please <a
				href="${pageContext.request.contextPath}/contact">contact us</a>
			with suggestions or improvements.
		</p>
		<h3>
			For the current release of <span class="redtext italicstext">v</span>HMML
			School, be aware that
		</h3>
		<ul>
			<li>Most manuscript images in School are zoomable, but some are
				not. If you can see a set of six circle buttons in the upper
				left-hand corner of the image when the cursor hovers over the image,<img src="${pageContext.request.contextPath}/static/img/openseadragon_tools.png" alt="toolbar from openseadragon image viewer" width="200" />
				then you can zoom away using the buttons, features on your mouse, or
				gestures on a trackpad. The "home" circle button <img src="${pageContext.request.contextPath}/static/img/openseadragon_home2.png" alt="openseadragon home button" width="30" /> will reset the
				image to the original position; the square with diagonal arrow
				circle button <img src="${pageContext.request.contextPath}/static/img/openseadragon_fullscreen.png" alt="openseadragon full-screen mode button" width="30" /> will display the image in full-screen mode.</li>
			<li>When viewing an exercise answer, transcription solution, or
				floating table of letterforms, users will be unable to use the Next
				or Previous buttons until the respective dialog box/window is
				closed.</li>
			<li>When viewing a floating table of letterforms or a
				transcription solution, the image cannot be zoomed until you close
				the floating table. If you need to zoom in while viewing the
				floating table, first close the table, then zoom the image to the
				desired level and reopen the table.</li>
			<li>When viewing a zoomable image in full screen display,
				neither transcription solutions nor letterform tables can be viewed.
				We suggest that you take a screenshot of the table, or copy and
				paste its contents to a document that can be saved or printed.</li>
				<li> If there are multiple exercise answers or multiple transcription solutions for various columns on a single lesson page, only one answer or solution is viewable at a time.</li>
		</ul>


		<h3>
			<span class="redtext italicstext">v</span>HMML is optimized for the
			following browsers and platforms
		</h3>

		<ul>
			<li>Chrome running on both Windows and Mac OS</li>

			<li>Firefox running on both Windows and Mac OS</li>

			<%-- <li>Internet Explorer 11 running on Windows</li>--%>

			<li>Safari version 9.x and later running on Mac OS and iOS 10 (iPad mini and larger
				screens)</li>
		</ul>
		<h3 id="ACCESSIBILITY" class="rrHelp jumptarget-breadcrumbs"> Universal Design</h3>
			<ul>
			<li><span class="redtext italicstext">v</span>HMML was envisioned, designed and created with principles of Universal Design in mind for all users, including those with different abilities. Accessibility for users who might utilize different input devices 
				or assistive technology was considered from the very beginning. Part of the goal was to try to make the interface more flexible to be accessible for all kinds of users, especially for <a href="${pageContext.request.contextPath}/readingRoom">Reading Room</a> and <a href="${pageContext.request.contextPath}/folio">Folio</a>.</li> 
				<li>We provided point of need context-sensitive Help on all modules, with <a href="${pageContext.request.contextPath}/contact">contact email</a> available from any page from a contact link in the footer. </li> 
				<li><a href="http://www.hmml.org/" target="_blank">HMML</a> realizes that accessibility and Universal Design are goals 
				in which we can continue to improve. Please <a href="${pageContext.request.contextPath}/contact">contact us</a> if you have issues accessing our <span class="redtext italicstext">v</span>HMML site or if you have ideas for how we might continue to improve our design so that all may participate in using our 
				resources and tools for manuscript studies.</li>
			</ul>
		<h3>Technical: Minimum system requirements</h3>
		<ul>
			<li>Screen size of at least iPad mini: 200 x 134.7 <abbr title="millimeters">mm</abbr> (7.87 x 5.30 <abbr title="inches">in</abbr>)</li>
			<li>Up-to-date browser (Google Chrome, Mozilla Firefox, Safari, or equivalent) with JavaScript enabled</li>
			<li>If running a Macintosh, OS X 10.9 or later</li>
		</ul>
		<h3>Known issues</h3>
		<ul>
			<li>Note: <span class="redtext italicstext">v</span>HMML has <em>not</em>
				been optimized for smaller devices such as iPhones or Android
				phones.
			</li>
			<li>Older Mac OS X systems prior to version 10.9 may appear to run, but specific features such as Reading Room search and feedback corrections or additions may be inoperable.</li>

			<li>Because of the high-resolution of the images used in <span
				class="redtext italicstext">v</span>HMML, users with slow internet
				connections may experience a delay in image loading.
			</li>
			<li>Zoomable images (1): If a user quickly left-clicks the mouse
				and then right-clicks (or vice versa), the browser window may become
				frozen. The user may then be trapped within the zoomable image;
				trying to click off of the image does not regain control of the
				page. As a workaround for this issue, press <kbd>Ctrl</kbd>+<kbd>R</kbd>
				or <kbd>F5</kbd> to refresh the browser; on an iOS device, click the
				refresh/reload page button <span class="glyphicon glyphicon-repeat"
				aria-hidden="true"></span> on the browser. This is an issue with the
				Open Sea Dragon image viewer used in the <span
				class="redtext italicstext">v</span>HMML School Lessons. (<a
				href="https://github.com/openseadragon/openseadragon/issues/626"
				target="_blank">https://github.com/openseadragon/openseadragon/issues/626</a>).
			</li>
			<li>Zoomable images (2): Some manuscript images can be zoomed
				in closer than others. This is linked to the quality of the image
				made available to us by the owning institutions. We set the maximum
				zoom level for each image so as to avoid blurred or pixelated
				images.</li>
		</ul>
		<p>&nbsp;</p>
		<button class="btn school btn-sm" type="button" onclick="goBack()"><span aria-hidden="true" class="glyphicon glyphicon-arrow-left"></span>
			Go Back</button>
		<br />
		<script>
			function goBack() {
				window.history.back();
			}
		</script>
		<noscript>
			<p>&nbsp;<span class="redtext italicstext">v</span>HMML requires JavaScript in order to function correctly. Please enable JavaScript in your browser settings.
			&nbsp;Use the back button on your browser to return to the previous page.</p>
		</noscript>
		<p>&nbsp;</p>

	</div>
</div>