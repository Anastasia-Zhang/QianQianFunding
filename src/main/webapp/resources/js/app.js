"use strict";
/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) && $("html").addClass("ismobile"), $(document).ready(function () {
    function a(a, b, c) {
        $(a).mCustomScrollbar({
            theme: b,
            scrollInertia: 100,
            axis: "yx",
            mouseWheel: {enable: !0, axis: c, preventDefault: !0}
        })
    }

    if ($("html").hasClass("ismobile") || $(".c-overflow")[0] && a(".c-overflow", "minimal-dark", "y"), $(".navigation__sub")[0] && $("body").on("click", ".navigation__sub > a", function (a) {
        a.preventDefault(), $(this).closest(".navigation__sub").toggleClass("navigation__sub--toggled"), $(this).parent().find("ul").stop().slideToggle(250)
    }), $(".top-search")[0] && ($("body").on("focus", ".top-search__input", function () {
        $(".top-search").addClass("top-search--focused")
    }), $("body").on("click", ".top-menu__trigger > a", function (a) {
        a.preventDefault(), $(".top-search").addClass("top-search--focused"), $(".top-search__input").focus()
    }), $("body").on("click", ".top-search__reset", function () {
        $(".top-search").removeClass("top-search--focused "), $(".top-search__input").val("")
    }), $("body").on("blur", ".top-search__input", function () {
        var a = $(this).val();
        !a.length > 0 && $(".top-search").removeClass("top-search--focused")
    })), $("body").on("click", '[data-mae-target="#notifications"]', function (a) {
        a.preventDefault();
        var b = $(this).data("target");
        $("a[href=" + b + "]").tab("show")
    }), $("#widget-weather__main")[0]) {
        var b;
        $.simpleWeather({
            location: "Austin, TX", woeid: "", unit: "f", success: function (a) {
                var c = '<div class="widget-weather__current clearfix"><div class="widget-weather__icon widget-weather__icon-' + a.code + '"></div><div class="widget-weather__info"><h2>' + a.temp + "&deg;" + a.units.temp + '</h2><div class="widget-weather__region"><span>' + a.city + ", " + a.region + "</span><span>" + a.currently + '</span></div></div></div><ul class="widget-weather__upcoming clearfix"></ul>';
                $("#widget-weather__main").html(c), setTimeout(function () {
                    for (b = 0; b < 5; b++) {
                        var c = '<li class="media"><span class="pull-left widget-weather__icon widget-weather__icon-sm widget-weather__icon-' + a.forecast[b].code + '"></span><span class="pull-right">' + a.forecast[b].high + "/" + a.forecast[b].low + '</span><span class="media-body">' + a.forecast[b].text + "</span></li>";
                        $(".widget-weather__upcoming").append(c)
                    }
                })
            }, error: function (a) {
                $("#widget-weather__main").html("<p>" + a + "</p>")
            }
        })
    }
    if ($(".form-group--float")[0] && ($(".form-group--float").each(function () {
        var a = $(this).find(".form-control").val();
        0 == !a.length && $(this).addClass("form-group--active")
    }), $("body").on("blur", ".form-group--float .form-control", function () {
        var a = $(this).val(), b = $(this).parent();
        0 == a.length ? b.removeClass("form-group--active") : b.addClass("form-group--active")
    })), $(".collapse")[0] && ($(".collapse").on("show.bs.collapse", function (a) {
        $(this).closest(".panel").find(".panel-heading").addClass("active")
    }), $(".collapse").on("hide.bs.collapse", function (a) {
        $(this).closest(".panel").find(".panel-heading").removeClass("active")
    }), $(".collapse.in").each(function () {
        $(this).closest(".panel").find(".panel-heading").addClass("active")
    })), $(".login")[0] && $("body").on("click", ".login__block [data-block]", function (a) {
        a.preventDefault();
        var b = $(this).data("block"), c = $(this).closest(".login__block"), d = $(this).data("bg");
        c.removeClass("toggled"), setTimeout(function () {
            $(".login").attr("data-lbg", d), $(b).addClass("toggled")
        })
    }), $(".action-header__search")[0]) {
        var c;
        $("body").on("click", ".action-header__toggle", function (a) {
            a.preventDefault(), c = $(this).closest(".action-header").find(".action-header__search"), c.fadeIn(300), c.find(".action-header__input").focus()
        }), $("body").on("click", ".action-header__close", function () {
            c.fadeOut(300), setTimeout(function () {
                c.find(".action-header__input").val("")
            }, 350)
        })
    }
    $("input-mask")[0] && $(".input-mask").mask(), $(".color-picker")[0] && $(".color-picker").each(function () {
        var a = $(this).find(".color-picker__value"), b = $(this).find(".color-picker__target");
        b.farbtastic(a)
    }), $(".date-time-picker")[0] && $(".date-time-picker").datetimepicker({
        icons: {
            time: "zmdi zmdi-time",
            date: "zmdi zmdi-calendar",
            up: "zmdi zmdi-chevron-up",
            down: "zmdi zmdi-chevron-down",
            previous: "zmdi zmdi-chevron-left",
            next: "zmdi zmdi-chevron-right",
            today: "zmdi zmdi-screenshot",
            clear: "zmdi zmdi-trash",
            close: "zmdi zmdi-times"
        }
    }), $(".time-picker")[0] && $(".time-picker").datetimepicker({
        format: "LT",
        icons: {
            time: "zmdi zmdi-time",
            date: "zmdi zmdi-calendar",
            up: "zmdi zmdi-chevron-up",
            down: "zmdi zmdi-chevron-down",
            previous: "zmdi zmdi-chevron-left",
            next: "zmdi zmdi-chevron-right",
            today: "zmdi zmdi-screenshot",
            clear: "zmdi zmdi-trash",
            close: "zmdi zmdi-times"
        }
    }), $(".date-picker")[0] && $(".date-picker").datetimepicker({
        format: "DD/MM/YYYY",
        icons: {
            time: "zmdi zmdi-time",
            date: "zmdi zmdi-calendar",
            up: "zmdi zmdi-chevron-up",
            down: "zmdi zmdi-chevron-down",
            previous: "zmdi zmdi-chevron-left",
            next: "zmdi zmdi-chevron-right",
            today: "zmdi zmdi-screenshot",
            clear: "zmdi zmdi-trash",
            close: "zmdi zmdi-times"
        }
    }), $(".datetime-picker-inline")[0] && $(".datetime-picker-inline").datetimepicker({
        inline: !0,
        sideBySide: !0,
        icons: {
            time: "zmdi zmdi-time",
            date: "zmdi zmdi-calendar",
            up: "zmdi zmdi-chevron-up",
            down: "zmdi zmdi-chevron-down",
            previous: "zmdi zmdi-chevron-left",
            next: "zmdi zmdi-chevron-right",
            today: "zmdi zmdi-screenshot",
            clear: "zmdi zmdi-trash",
            close: "zmdi zmdi-times"
        }
    }), $(".tab-wizard")[0] && $(".tab-wizard").bootstrapWizard({
        tabClass: "tab-wizard__nav",
        nextSelector: ".tab-wizard__next",
        previousSelector: ".tab-wizard__previous",
        firstSelector: ".tab-wizard__first",
        lastSelector: ".tab-wizard__last"
    }), $(".lightbox")[0] && $(".lightbox").lightGallery({enableTouch: !0}), $('[data-toggle="tooltip"]')[0] && $('[data-toggle="tooltip"]').tooltip(), $('[data-toggle="popover"]')[0] && $('[data-toggle="popover"]').popover(), $("html").hasClass("ie9") && $("input, textarea").placeholder({customClass: "ie9-placeholder"}), $("select.select2")[0] && $("select.select2").select2({
        dropdownAutoWidth: !0,
        width: "100%"
    }), $(".textarea-autosize")[0] && autosize($(".textarea-autosize"))
}), $(document).ready(function () {
    function a(a) {
        a.requestFullscreen ? a.requestFullscreen() : a.mozRequestFullScreen ? a.mozRequestFullScreen() : a.webkitRequestFullscreen ? a.webkitRequestFullscreen() : a.msRequestFullscreen && a.msRequestFullscreen()
    }

    var b, c = $("body");
    $(this);
    c.on("click", "[data-mae-action]", function (d) {
        d.preventDefault();
        var e = $(this).data("mae-action");
        switch (e) {
            case"block-open":
                b = $(this).data("mae-target"), $(b).addClass("toggled"), c.addClass("block-opened"), c.append('<div data-mae-action="block-close" data-mae-target="' + b + '" class="mae-backdrop mae-backdrop--sidebar" />');
                break;
            case"block-close":
                $(b).removeClass("toggled"), c.removeClass("block-opened"), $(".mae-backdrop--sidebar").remove();
                break;
            case"fullscreen":
                a(document.documentElement);
                break;
            case"print":
                window.print();
                break;
            case"clear-localstorage":
                swal({
                    title: "Are you sure?",
                    text: "This can not be undone!",
                    type: "warning",
                    showCancelButton: !0,
                    confirmButtonColor: "#3085d6",
                    confirmButtonText: "Yes, clear it",
                    cancelButtonText: "No, cancel"
                }).then(function () {
                    localStorage.clear(), swal("Cleared!", "Local storage has been successfully cleared", "success")
                })
        }
    })
});