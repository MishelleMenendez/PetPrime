<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<title>PetPrime</title>
<link rel="stylesheet" href="estilo.css">
</head>
<link rel="web site icon" type="png" href="img/icono.png">
<body>
	<nav>
		<ul>
			<li><a href="index.jsp" class="logo"><img src="img/logo.png"
					alt="Logo"></a></li>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="registro.jsp">Iniciar Sesión</a></li>
			<li><a href="producto.jsp">Ver Productos</a></li>
			<li><a href="categoria.jsp">Buscar por Categoría</a></li>
		</ul>
		<div class="slider-container">
			<div class="slider-item">
				<img src="img/banner1.png" alt="Imagen 1" />
			</div>
			<div class="slider-item">
				<img src="img/banner2.png" alt="Imagen 2" />
			</div>
			<div class="slider-item">
				<img src="img/banner_prime1.PNG" alt="Imagen 3" />
			</div>
		</div>
	</nav>
	<main>
		<div class="container">
			<section class="gallery">
				<div class="icon">
					<img src="img/img1.png" alt="Imagen 1">
					<div class="text">Excelentes precios</div>
				</div>

				<div class="icon">
					<img src="img/img2.png" alt="Imagen 2">
					<div class="text">Marcas premium</div>
				</div>
				<div class="icon">
					<img src="img/img3.png" alt="Imagen 3">
					<div class="text">Compras seguras</div>
				</div>
				<div class="icon">
					<img src="img/img4.png" alt="Imagen 3">
					<div class="text">Buenos productos</div>
				</div>
				<div class="icon">
					<img src="img/img5.png" alt="Imagen 3">
					<div class="text">Varios juguetes</div>
				</div>
			</section>
		</div>
		<div class="color">
			<div class="container">
				<div class="titulo">
					<a class="submorado"> Encuentra Todo para tus Mascotas Aquí</a>
				</div>
				<section class="gallery">
					<div class="gallery-item">
						<img src="img/perros.PNG" alt="Imagen 1">
						<div class="image-caption"></div>
					</div>

					<div class="gallery-item">
						<img src="img/gatos.PNG" alt="Imagen 2">
						<div class="image-caption"></div>
					</div>
					<div class="gallery-item">
						<img src="img/aves.PNG" alt="Imagen 3">
						<div class="image-caption"></div>
					</div>
				</section>
				<div class="content-container">
					<article>
						<a class="logopeq"><img src="img/logo.png" alt="Logo"></a>
						<p>Bienvenido a PetPrime, tu tienda en línea de confianza para
							todo lo que necesitas para tus mascotas. Nos dedicamos a ofrecer
							productos de alta calidad a precios accesibles para garantizar el
							bienestar y la felicidad de tus amigos peludos.</p>
						<h3>Nuestra Misión</h3>
						<p>En PetPrime, nuestra misión es proporcionar a los dueños de
							mascotas una amplia variedad de productos premium que promuevan
							la salud y el bienestar de sus mascotas. Creemos que cada mascota
							merece lo mejor, y trabajamos arduamente para asegurarnos de que
							nuestros clientes tengan acceso a lo mejor del mercado.</p>
						<h3>Productos y Servicios</h3>
						<p>Ofrecemos una amplia gama de productos que incluyen
							alimentos, juguetes, accesorios, productos de higiene y más para
							perros, gatos, aves y otras mascotas. Todos nuestros productos
							son seleccionados cuidadosamente para cumplir con los más altos
							estándares de calidad.</p>
						<h3>¿Por Qué Elegirnos?</h3>
						<ul>
							<li><strong>Excelentes precios:</strong> Ofrecemos precios
								competitivos sin comprometer la calidad.</li>
							<li><strong>Marcas premium:</strong> Solo trabajamos con las
								mejores marcas del mercado.</li>
							<li><strong>Compras seguras:</strong> Garantizamos una
								experiencia de compra segura y confiable.</li>
							<li><strong>Variedad de productos:</strong> Encontrarás todo
								lo que necesitas en un solo lugar.</li>
						</ul>
						<p>Explora nuestro sitio y descubre cómo PetPrime puede
							ayudarte a cuidar mejor de tus mascotas. ¡Gracias por elegirnos!</p>
					</article>
					<aside>
						<h2 class="sub">Conoce a la desarrolladora</h2>
						<p>
							<a class="sub"
								href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310">Haz
								clic aquí</a>
						</p>
						<a class="logo"><img src="img/iconmishelle.png" alt="Logo"></a>
					</aside>
				</div>

			</div>
		</div>
	</main>
	<footer>
		<div class="contact-bar">
			<ul>
				<li><a> Redes Sociales</a> <br> <a
					href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310"><i
						class='bx bxl-linkedin-square'></i></a> <a
					href="https://www.linkedin.com/in/mishelle-menéndez-a65a45310"><i
						class='bx bxl-instagram-alt'></i></a></li>
			</ul>
		</div>
	</footer>
	<script>
    let slideIndex = 0;
    const slides = document.querySelectorAll('.slider-item');

    function showSlides() {
      slides.forEach((slide, index) => {
        slide.style.opacity = '0';
        slide.classList.remove('active');
      });

      slideIndex++;
      if (slideIndex > slides.length) {
        slideIndex = 1;
      }

      slides[slideIndex - 1].style.opacity = '1';
      slides[slideIndex - 1].classList.add('active');

      setTimeout(showSlides, 5000); // Cambiar imagen cada 5 segundos
    }

    document.addEventListener('DOMContentLoaded', (event) => {
      showSlides();
    });
  </script>
</body>
</html>
