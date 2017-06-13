$(function () {

  $(document).scroll(function () {
    let top = $(this).scrollTop();
    let $navbarImage = $(".navbar-image");
    let $navbarBlog = $(".navbar-material-blog");
    if (top < 30) {
      let dif = 1 - top / 30;
      $navbarImage.css({opacity: dif});
      $navbarImage.show();
      $(".navbar-material-blog .navbar-wrapper").css({'padding-top': '30px'});
      $navbarBlog.removeClass("navbar-fixed-top");
      $navbarBlog.addClass("navbar-absolute-top");
    }
    else {
      $navbarImage.css({opacity: 0});
      $navbarImage.hide();
      $(".navbar-material-blog .navbar-wrapper").css({'padding-top': 0});
      $navbarBlog.removeClass("navbar-absolute-top");
      $navbarBlog.addClass("navbar-fixed-top");
    }
  });

  $("a[href*=#]").click(function (e) {
    e.preventDefault();
  });

});
