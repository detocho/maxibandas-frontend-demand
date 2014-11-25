<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Search </title>
	</head>
	<body>

        <section id="listadoPage">
            <form class="showListado">
                <label>Mostrando <b>${limit + offset}</b> de ${total}</label>
                <select>
                    <option>Ordenar por</option>
                    <option value="nombre">Nombre</option>
                    <option value="ubicacion">Ubicación</option>
                    <option value="precio">Precio</option>
                </select>
            </form>
            <ul>
                <% bands.each{ %>
                <li>
                <a href="/banda/${it.band_id}"><img src="http://api.maxibanda.com.mx/pictures/uploads/2014/11/MB1-200X160.jpeg"></a>
                <h4>${it.title}</h4>
                <p class="precioLp">
                    $ ${it.price_min}
                </p>
                <p class="ubicacionLp">
                    ${it.location.parent_location[1].name}
                </p>
                <a class="vermas" href="/banda/${it.band_id}">Ver detalle</a>
                </li>
                <% } %>

            </ul>
            <ul id="pageNum">
                <a href="#"><li class="prev">&laquo;</li></a>
                <a href="#"><li>1</li></a>
                <a href="#"><li>2</li></a>
                <a href="#"><li>3</li></a>
                <a href="#"><li>4</li></a>
                <a href="#"><li>5</li></a>
                <a href="#"><li>&raquo;</li></a>
            </ul>
        </section>

	</body>
</html>
