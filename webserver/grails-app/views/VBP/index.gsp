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
                <li><b>Género:</b> ${nameCategory}</li>
                <li><b>Tel.:</b>${band.contact.phone}</li>
                <li><b>Contactar a:</b> ${band.contact.name}</li>
                <li><b>A partir de:</b></li>
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

                    <% bandsRecommended.each{ %>
                    <li>
                        <a href="/banda/${it.band_id}">
                            <div class="VBP-listado-image">
                                <% if (it.pictures[0]) { %>
                                <img src="${it.pictures[0].url}">
                                <% }else{%>
                                <img src="${resource(dir: 'images', file: 'pic_upload.png')}">
                                <%}%>

                            </div>
                            <div class="VBP-listado-datos">
                                <span class="titleListado"><b>${it.name}</b></span>
                                <span>${it.category_id}</span>
                                <span>${it.location.parent_location[1].name}</span>
                                <span>$ ${it.price_min}</span>
                            </div>
                        </a>
                    </li>
                    <%}%>
                </ul>
            </div>
        </div>
        <div class="slide-main-comentarios">

            <!--
            <div class="slide-datos-contacto">
              aqui metemos la data de contacto
                nombre de la banda
                contacto
                telefono
                text area de mensaje
                boton de contactar
            </div>
            -->
            <div class="slide-comentarios">
                <div id="VBP-info-anuncio">
                    <label>No. Anuncio:</label> MB${band.band_id}
                    - <label>Publicado desde:</label> ${band.date_registration}
                </div>
                <div id="VBP-comentarios">

                    <b>Comentarios:</b>
                    <ul>

                        <% for (int i = 0; i<5; i++){ %>
                        <li>

                                <div class="VBP-comentarios-image"><img src="https://yt3.ggpht.com/-Wc_7AWK169w/AAAAAAAAAAI/AAAAAAAAAAA/I4xzLPy5Ruw/s48-c-k-no/photo.jpg"></div>
                                <div class="VBP-comentarios-datos">
                                    <span class="titleComentario"><b>Nombre seudonimo de quien comenta</b> hace x dias</span>

                                    <span>Comentario extenso o no extenso de lo que es la banda, si le parecio bien o mal</span>

                                </div>

                        </li>
                        <%}%>
                    </ul>

                </div>

            </div>
        </div>
    </article>
</section>

<!--
<section id="descripcion">
    <article>
        <h4>Descripción</h4>
        <p>${band.description}</p>

    </article>
</section>
-->


</body>
</html>
