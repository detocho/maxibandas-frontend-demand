<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>VBP</title>
	</head>
	<body>

        <section id="datos">
            <article class="galleria">
                <div class="leftSide">
                    <div>
                    <span class="VBP-title">${band.title}</span>
                    </div>
                    <div class="big">
                        <iframe src="${urlVideo}" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <ul class="thumb">
                        <%
                            band.pictures.each{
                            def urlThumbnail = it.url.replace('200X160', '100X75')

                        %>
                        <li><a><img src="${urlThumbnail}"></a></li>
                        <% }%>
                    </ul>
                </div>
                <div class="rightSide">
                    <h6>${band.location.parent_location[1].name}</h6>
                    <ul>
                        <li><b>Género:</b> ${band.category_id}</li>
                        <li><b>Tel.:</b>${band.contact.phone}</li>
                        <li><b>Contactar a:</b> ${band.contact.name}</li>
                        <li><b>A partir de:</b> ${band.manager_id}</li>
                    </ul>
                    <h2>$ ${band.price_min}</h2>
                    <ul>
                        <li><b>Descripción</b><p>${band.description}</p></li>
                    </ul>
                    <form>
                        <div class="datosConsulta">
                            <textarea placeholder="Escribe aquí tu consulta" id="consulta"></textarea>
                            <fieldset id="consOpen">
                                <label for="mail"></label><input id="mail" type="email" placeholder="email"><br>
                                <label for="name"></label><br><input id="name" type="text" placeholder="nombre">

                                <input id="enviarCons" type="submit" value="Contactar" />
                            </fieldset>
                        </div>
                    </form>
                    <div id="VBP-listado">
                        <b>Recomendados:</b>
                        <ul>

                            <% for (int i = 0; i<15; i++){ %>
                            <li>
                                <a href="#">
                                <div class="VBP-listado-image"><img src="http://images.maxibanda.mx/pictures/uploads/2015/4/MB2-100X75.jpeg"></div>
                                <div class="VBP-listado-datos">
                                    <span class="titleListado"><b>${band.name}</b></span>
                                    <span>${band.category_id}</span>
                                    <span>${band.location.parent_location[1].name}</span>
                                    <span>$ ${band.price_min}</span>
                                </div>
                                </a>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                </div>
            </article>
        </section>
        <section id="descripcion">
            <article>
                <h4>Descripción</h4>
                <p>${band.description}</p>

            </article>
        </section>


	</body>
</html>
