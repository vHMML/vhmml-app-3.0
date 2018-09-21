<div id="carousel" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carousel" data-slide-to="0" class="active"></li>
		<li data-target="#carousel" data-slide-to="1"></li>
		<li data-target="#carousel" data-slide-to="2"></li>
		<li data-target="#carousel" data-slide-to="3"></li>
		<li data-target="#carousel" data-slide-to="4"></li>
		<li data-target="#carousel" data-slide-to="5"></li>
		<li data-target="#carousel" data-slide-to="6"></li>
		<li data-target="#carousel" data-slide-to="7"></li>
	</ol>
 
	<div class="carousel-inner responsive" role="listbox">	
	
		<div class="item active">
			<img src="${pageContext.request.contextPath}/static/img/AODA_00004.jpg" alt="blue and pink illuminated manucript closeup showing saint with halo, book, columns and animals">
			<div class="carousel-caption">
				<h3 class="section-title">Armenian Orthodox Diocese of Aleppo, Syria, MS AODA 4<br /><br /> Gospels, 17th Century. Manuscript on paper</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/132922"><button>VIEW IN READING ROOM</button></a>
			</div>
		</div>

		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/VONG0034.jpg" alt="beautiful columns and arch with deep blue, red, green and yellow design">
			<div class="carousel-caption">
				<h3 class="section-title">Abba Garima Monastery, Tigray Province, Ethiopia, MS AG 2<br /><br /> Gospels, 5th/6th Century? Manuscript on vellum</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/132897"><button>VIEW IN READING ROOM</button></a>
			</div>						
		</div>

		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/ACM_00006_0006Vsm.jpg" alt="color arches, text">
			<div class="carousel-caption">
				<h3 class="section-title">Cathedral Archives, Mdina, Malta<br /><br /> Codex Evangeliorum Melitensis, 12th Century. Manuscript on parchment</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/132651"><button>VIEW IN READING ROOM</button></a>
			</div>			
		</div>
		
		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/DIYR_00339_001r3.jpg" alt="curly headed saint with corona">
			<div class="carousel-caption">
				<h3 class="section-title">Meryem Ana Syriac Orthodox Church, Diyarbakir, Turkey, MS DIYR 339<br /><br /> Gospels, 6th Century. Manuscript on vellum</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/125050"><button>VIEW IN READING ROOM</button></a>
			</div>									
		</div>		
		
		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/STEF00004_012.jpg" alt="saintly writer with book and Eastern script">
			<div class="carousel-caption">
				<h3 class="section-title">Vasily Stefanyk National Scientific Library, Lviv, Ukraine, MS STEF 4<br /><br /> Gospels, 16th Century. Manuscript on paper</h3>
				<a href="https://w3id.org/vhmml/readingRoom"><button>COMING SOON TO READING ROOM</button></a>
			</div>		
		</div>
		
		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/OBA0004_002r_001vcropped2.jpg" alt="lovely black Arabic script with green and blue design and stamp">
			<div class="carousel-caption">
				<h3 class="section-title">Ordre Basilien Aleppin, Sarba, Lebanon, MS OBA 4<br /><br /> Gospels, 18th Century. Manuscript on paper</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/120263"><button>VIEW IN READING ROOM</button></a>
			</div>						
		</div>
		
		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/CFMM00038_239r_2.jpg" alt="gold with red outline Syriac script">
			<div class="carousel-caption">
				<h3 class="section-title">Church of the Forty Martyrs, Mardin, Turkey, MS CFMM 00038<br /><br /> Gospel Lectionary, 13th century (1229/30). Manuscript on vellum</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/123212"><button>VIEW IN READING ROOM</button></a>
			</div>		
		</div>
		
		<div class="item">
			<img src="${pageContext.request.contextPath}/static/img/SAV_ABS_00258_003v.jpg" alt="Arabic fragment">
			<div class="carousel-caption">
				<h3 class="section-title">Abdelbakr Bin Said Library, Timbuktu, Mali, MS SAV ABS 258<br /><br /> Poem in praise of the Prophet, date unknown. Manuscript on paper</h3>
				<a href="https://w3id.org/vhmml/readingRoom/view/142101"><button>VIEW IN READING ROOM</button></a>
			</div>		
		</div>
	</div>

	<a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>

<script type="text/javascript">
	var $carousel;
	var cycling = true;
	var $arrows = $('.carousel-control .glyphicon');
	
	$(function() {
		$carousel = $('#carousel');
		
		$carousel.on('click', 'div.item, .carousel-indicators li', function() {
			toggleCarousel();
		})
		
		$('.carousel-control').hover(
			function() {
				$arrows.show();
			},
			function() {
				$arrows.hide();
			}
		);
	});
	
	function toggleCarousel() {
		if(cycling) {			
			$carousel.carousel('pause');
			cycling = false;
		} else {
			$carousel.carousel('cycle');
			cycling = true;
		}
	}
</script>