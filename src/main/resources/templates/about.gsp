<!DOCTYPE html>
<html lang="en">
<% include "header.gsp" %>
<body>
<div class="demo-layout-waterfall mdl-layout mdl-js-layout">
    <% include "menu.gsp" %>
    <main class="mdl-layout__content">
        <div class="demo-blog__posts mdl-grid">
            <div class="mdl-card mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-shadow--2dp">
                <figure class="mdl-card__media" style="text-align: center; background-color: #2f3e5b">
                    <img src="${content.image}" alt=""/>
                </figure>

                <div class="mdl-card__title">
                    <h1 class="mdl-card__title-text">${content.title}</h1>

                    <h2 class="mdl-card__subtitle-text">${content.desc}</h2>
                </div>

                <div class="mdl-card__supporting-text" style="width: 98%;">
                    <table class="mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-data-table mdl-js-data-table mdl-shadow--2dp">
                        <tbody>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">face</i></td>
                            <td>${content.birthdate}</td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">explore</i></td>
                            <td>Москва</td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">perm_phone_msg</i></td>
                            <td>${content.phone}</td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">perm_camera_mic</i></td>
                            <td><a href="skype:${content.skype}?call" class="demo-link">Skype</a></td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">markunread_mailbox</i></td>
                            <td><a href="mailto:${content.email}" class="demo-link">E-Mail</a></td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">settings_backup_restore</i></td>
                            <td><a href="${content.github}" class="demo-link">GitHub</a></td>
                        </tr>
                        <tr>
                            <td class="mdl-data-table__cell--non-numeric"><i class="material-icons">question_answer</i></td>
                            <td><a href="${content.stackoverflow}" class="demo-link">StackOverflow</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="mdl-card__actions mdl-card--border">
                    <a href="${content.cv}" target="_blank" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">Резюме</a>
                </div>
            </div>
        </div>
    </main>
    <% include "footer.gsp" %>
</div>
</body>
</html>


