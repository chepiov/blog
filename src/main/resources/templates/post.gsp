<!DOCTYPE html>
<html lang="en">
<% include "header.gsp" %>
<body>
<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
    <% include "menu.gsp" %>
    <main class="mdl-layout__content">
        <div class="demo-blog__posts mdl-grid">
            <div class="mdl-cell mdl-cell--12-col">
                <h3>${content.title}</h3>
                ${content.body}
            </div>
        </div>
    </main>
    <% include "footer.gsp" %>
</div>
</body>
</html>