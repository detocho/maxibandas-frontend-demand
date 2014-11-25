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
                    <h3>${band.title}</h3>
                    <h6>${band.location.parent_location[1].name}</h6>
                    <div class="big">
                        <iframe src="http://www.youtube.com/embed/NU7sQI6aEpU?rel=0" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <ul class="thumb">
                        <li><a><img src="http://api.maxibanda.com.mx/pictures/uploads/2014/11/MB1-100X75.jpeg"></a></li>
                    </ul>
                </div>
                <div class="rightSide">
                    <h3>${band.title}</h3>
                    <h6>${band.location.parent_location[1].name}</h6>
                    <ul>
                        <li><b>Género:</b> ${band.category_id}</li>
                        <li><b>Celular:</b>${band.manager_id}</li>
                        <li><b>Fijo:</b> ${band.manager_id}</li>
                        <li><b>Nextel:</b> ${band.manager_id}</li>
                        <li><b>Contactar a:</b> ${band.manager_id}</li>
                        <li><b>A partir de:</b> ${band.manager_id}</li>
                    </ul>
                    <h2>$ ${band.price_min}</h2>
                    <form>
                        <div class="datosConsulta">
                            <textarea placeholder="Escribe aquí tu consulta" id="consulta"></textarea>
                            <fieldset id="consOpen" style="display:none;">
                                <label for="mail">Correo Electrónico </label><input id="mail" type="email"><br>
                                <label for="name">Nombre </label><br><input id="name" type="text">

                                <input id="enviarCons" type="submit">
                            </fieldset>
                        </div>
                    </form>
                </div>
            </article>
        </section>
        <section id="descripcion">
            <article>
                <h4>Descripción</h4>
                <p>${band.description}
            </article>
        </section>


	</body>
</html>
