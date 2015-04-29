<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Search </title>
</head>
<body>

<section id="navigatorPage">

    <div>
        <span>Tipo de música:</span>
        <ul>

            <li>
                <select class="caja_filtro">


                    <% for(int index=0; index< groups.size(); index++){ %>
                    <option value=${groups[index].categoryId}>${groups[index].name}</option>
                    <% } %>

                </select>
            </li>


        </ul>
    </div>

    <div>
        <span>Para que evento</span>
        <ul>

            <li>
                <select class="caja_filtro">


                    <% for(int index=0; index< events.size(); index++){ %>
                    <option value=${events[index].categoryId}>${events[index].name}</option>
                    <% } %>

                </select>
            </li>


        </ul>
    </div>

    <div>
        <span>Estado</span>
        <ul>

            <li>
                <select class="caja_filtro">

                    <% for(int index=0; index< states.size(); index++){ %>
                    <option value=${states[index].locationId}>${states[index].name}</option>
                    <% } %>
                </select>
            </li>


        </ul>
    </div>

</section>

<section id="listadoPage">
    <form class="showListado">

        <% if (total <= limit){%>
        <label>Mostrando <b>${total}</b> de ${total}</label>


        <%}%>

        <% if (total > limit){%>
        <label>Mostrando de <b>${offset + 1}</b> a <b> ${total - limit} </b> de <b>${total}</b> </label>

        <%}%>

        <% if (total == 0){%>
        <label><h1>No encontramos resultados para tu tipo de filtro pero te recomendamos...</h1></label>
        <%}%>


        <select>
            <option>Ordenar por</option>
            <option value="Precio">Precio</option>
            <option value="Ubicacion">Ubicación</option>

        </select>
    </form>

    <ul>


        <% bands.each{ %>

        <li>
            <a href="/banda/${it.band_id}">
                <% if (it.pictures[0]) { %>
                <img src="${it.pictures[0].url}">
                <% }else{%>
                <img src="${resource(dir: 'images', file: 'pic_upload.png')}">
                <%}%>

            <h4>${it.title}</h4>
            <p class="precioLp">
                $ ${it.price_min}
            </p>
            <p class="ubicacionLp">
                ${it.location.parent_location[1].name}
            </p>
            </a>

        </li>
        <% } %>



    </ul>
    <ul id="pageNum">
        <% if (total > limit){%>
        <a href="#"><li>Cargar mas resultados...</li></a>
        <%}%>

    </ul>
</section>

</body>
</html>
