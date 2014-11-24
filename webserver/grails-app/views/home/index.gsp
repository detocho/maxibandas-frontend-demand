<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
    <div class="content slide">
        <section id="search">
            <article>
                <h2>Busca tu banda</h2>
                <p>
                    Elige entre las bandas disponibles para ambientar tu evento.
                    <br><b>Es fácil, rápido y seguro.</b>
                </p>
                <form>

                    <select>
                        <option>¿Que tipo de música?</option>

                        <% for(int index=0; index< groups.size(); index++){ %>
                        <option value=${groups[index].categoryId}>${groups[index].name}</option>
                        <% } %>

                    </select>

                    <select>
                        <option>¿En donde?</option>

                        <% for(int index=0; index< states.size(); index++){ %>
                        <option value=${states[index].locationId}>${states[index].name}</option>
                        <% } %>
                    </select>

                    <select>
                        <option>¿Para que evento?</option>

                        <% for(int index=0; index< events.size(); index++){ %>
                        <option value=${events[index].categoryId}>${events[index].name}</option>
                        <% } %>

                    </select>

                    <input type="submit" value="Buscar">
                </form>
            </article>
        </section>
    </div>
	</body>
</html>
