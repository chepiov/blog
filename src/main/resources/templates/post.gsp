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

            <div class="mdl-cell mdl-cell--12-col" id="disqus_thread"></div>
            <script>
                var disqus_config = function () {
                    this.page.url = 'http://www.chepiov.org/${content.uri}';  // Replace PAGE_URL with your page's canonical URL variable
                    this.page.identifier = '${content.uri}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
                };
                (function () { // DON'T EDIT BELOW THIS LINE
                    var d = document, s = d.createElement('script');
                    s.src = '//chepiov.disqus.com/embed.js';
                    s.setAttribute('data-timestamp', +new Date());
                    (d.head || d.body).appendChild(s);
                })();
            </script>
            <noscript>Please enable JavaScript to view the <a
                    href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

        </div>
    </main>
    <% include "footer.gsp" %>
</div>
</body>
</html>