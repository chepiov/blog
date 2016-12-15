<!DOCTYPE html>
<html lang="en">
<% include "header.gsp" %>
<body>
<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
    <% include "menu.gsp" %>
    <main class="mdl-layout__content">
        <div class="demo-blog__posts mdl-grid">
            <% published_posts.each { post -> %>
            <% if (post.tags.contains('tech')) { %>
            <div class="mdl-cell mdl-cell--12-col demo-card-wide mdl-card mdl-shadow--2dp">

                <div class="mdl-card__title <% if (!post.image) { %>mdl-card__title_without_img<% } %>"
                     <% if (post.image) { %>style="background: url('${post.image}') center / cover; height: 175px;" <%
                        } %>>
                    <h2 class="mdl-card__title-text">${post.title}</h2>

                </div>

                <div class="mdl-card__supporting-text">
                    ${post.summary}
                </div>

                <div class="mdl-card__supporting-text">
                    <small>${new java.text.SimpleDateFormat("dd MMMM yyyy", new Locale('ru')).format(post.date)}</small>
                </div>

                <div class="mdl-card__actions mdl-card--border">
                    <a href="${post.uri}" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                        Читать
                    </a>
                </div>
            </div>
            <% }
            } %>
        </div>
    </main>

    <% include "footer.gsp" %>
</div>
</body>
</html>

