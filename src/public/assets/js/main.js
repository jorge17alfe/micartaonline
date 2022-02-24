
// DELETE ROW
function deleterow(data, section, group) {
    var user = $("#id_usuario").val();
    // console.log(data + section + group)
    $.post({
        url: "<?= SERVERURL ?>restaurant/deleteRow",
        data: {
            ["id_usuario"]: user,
            [section]: {
                [data]: ''
            },
            "group": group
        }

    })
        .done(function (response) {
            console.log(response)
            $("#main" + section + data).fadeOut(600, function () {
                setTimeout(getRow, 1);
                setTimeout(getIframe, 1);
            });

        })
}
// delete data all
function deleteAll(data, form) {
    console.log('esta')
    if (confirm('Estas seguro? Se borrarán todos los datos.') == true) {
        var user = $("#id_usuario").val();
        $.post({
            url: "<?= SERVERURL ?>restaurant/deleteAll",
            data: {
                "id_usuario": user,
                "group": data
            }
        })
            .done(function (response) {
                console.log(response)
                showresponse("respuesta", response)
                $(form).trigger("reset");
                setTimeout(getRow, 300)
                setTimeout(getIframe, 300);
            })
    }
}
// SHOW HIDE RESPONSE FORM
function showresponse(data, response) {
    $("." + data + "").show('swing').html(response, "swing")
    setTimeout(() => {
        $("." + data + "").hide('swing').html('')
    }, 3000);
    return;
}


// ANIMATE HIDE-SHOW SLICE ELEMENT
$(".right").css({
    left: 3000
});
$(".left").css({
    right: 3000
});
$(window).on("load", () => {

    $(".right").animate({
        left: 0,
    },
        1000,
        function () {
            $(this).animate({
                left: 100
            }, 400,
                function () {
                    $(this).animate({
                        left: 0
                    }, 200,
                        function () {
                            $(this).animate({
                                left: 50
                            }, 100,
                                function () {
                                    $(this).animate({
                                        left: 0
                                    }, 50, function () {
                                        $(this).animate({
                                            left: 50
                                        }, 25,
                                            function () {
                                                $(this).animate({
                                                    left: 0
                                                }, 10)
                                            })
                                    })
                                })
                        })
                })

        }
    );

    $(".left").animate({
        right: 0
    },
        1000,
        function () {
            $(this).animate({
                right: 100
            }, 400,
                function () {
                    $(this).animate({
                        right: 0
                    }, 200,
                        function () {
                            $(this).animate({
                                right: 50
                            }, 100,
                                function () {
                                    $(this).animate({
                                        right: 0
                                    }, 50, function () {
                                        $(this).animate({
                                            right: 50
                                        }, 25,
                                            function () {
                                                $(this).animate({
                                                    right: 0
                                                }, 10)
                                            })
                                    })
                                })
                        })
                })
        }
    );
});
// CSS logo main
$(".logo").on("click", function () {
    window.location = '/';
})


function choosealergens(input) {
    console.log(input)
    const boton = $("#" + input);
    const elementpadre = $(boton).parent();
    if ($(boton).attr("checked") === "checked") {
        $(boton).removeAttr("checked")
        elementpadre.css({
            "background-color": "transparent"
        })
    } else {
        $(boton).attr("checked", "checked")
        elementpadre.css({
            "background-color": "var(--color_second)",
            "border-radius": "10%"
        })
    }
}




function upDownItem(section, group, item, suma) {
    var user = $("#id_usuario").val();
    console.log(section)
    // return;
    $.post({
        url: "<?= SERVERURL ?>restaurant/upDownItem",
        data: {
            "user": user,
            "section": section,
            "group": group,
            "item": item,
            "suma": suma,
        }
    })
        .done(function (response) {
            getRow();
            if (item != '') {
                hideShowSection(section);
                setTimeout(() => {
                    showItems(section, group);
                }, 200)
            }
            return false;
        });
}


getComment()

// SEND COMENT USERS
$(document).ready(function () {
    $("#comments").submit((e) => {
        e.preventDefault();
        $.post({
            url: "<?= SERVERURL ?>information/receivemessage",
            data: $("#comments").serialize()
        })
            .done(function (response) {
                // console.log(response);
                $("#comments").trigger("reset");
                showresponse("respuestacomments", response)
                hideresponse("respuestacomments")
                getComment(2)
                return false;
            });
    });
    $("#information").submit((e) => {
        e.preventDefault();
        console.log(e.target)
        // $.post({
        //     url: "<?= SERVERURL ?>information/receivemessage",
        //     data: $("#information").serialize()
        // })
        //     .done(function (response) {
        //         // console.log(response);
        //         $("#information").trigger("reset");
        //         showresponse("respuestainformation", response)
        //         hideresponse("respuestainformation")
        //         return false;
        //     });
    });
})
// GET COMMENTS
function getComment(data = 2) {
    $.post({
        url: "https://localhost/alocraise2.0/information/getDataAll",
        data: {
            "number": data
        }
    })
        .done(function (response) {
            const comments = JSON.parse(response);
            // console.log(comments.length);
            console.log(comments);
            if (comments !== false) {
                if (data == 2) {
                    $(".delete_comment").remove();
                }
                var inicio = [comments.length - 2]
                for (var i = inicio; i < comments.length; i++) {
                    // console.log(comments[i]);
                    var row = "<div class='col-lg-5 col-12 delete_comment presentacion_2  p-4 my-3 ' style='' id='show" + i + "'> "
                    row += "<p class = 'text-right' > <strong> Publicado: </strong><cite>" + comments[i]["registration_date"] + "</cite><br><strong> dice: </strong>" + comments[i]["user"] + "</p>"
                    row += "<p> " + comments[i]["content"] + " </p> "
                    row += "<p class = 'text-right' ></p></div>"
                    // row += "<p class = 'text-right' > <a href = '<?= SERVERURL ?>index#main_comment' > Responder... </a></p></div>"
                    $(".comments").append(row);
                }
                $("#addcomment").attr("onclick", "getComment(" + [comments.length + 2] + ")");
            } else {
                showresponse("respuestalastcoment", "no hay mas comentarios")
                hideresponse("respuestalastcoment")
            }
        })
}

// SHOW-HIDE ELEMENTS
let element = document.querySelectorAll(".scrollshow");
let showscrollporcent = (80 * $(window).height() / 100);
window.addEventListener("scroll", showelements);
window.addEventListener("scroll", hideelements);

function showelements() {
    let scrolltop1 = document.documentElement.scrollTop;
    for (var i = 0; i < element.length; i++) {
        var alturaelement = element[i].offsetTop;
        if (alturaelement - showscrollporcent < scrolltop1) {
            // element[i].style.opacity = 1,
            element[i].style.transform = "scale(1)",
                element[i].style.transition = "transform .5s"

        }
    }
}

function hideelements() {
    let scrolltop1 = document.documentElement.scrollTop;
    for (var i = 0; i < element.length; i++) {
        var alturaelement = element[i].offsetTop;
        if (alturaelement - showscrollporcent > scrolltop1) {
            // element[i].style.opacity = 1,
            element[i].style.transform = "scale(0)",
                element[i].style.transition = "transform .5s"

        }
    }
}
// CHANGED IMAGE STATIC BACKGROUND
$(window).scroll(function () {
    let porcent = (38 * $(document).height() / 100);
    if ($(document).scrollTop() < porcent) {
        $(".fondoportada").fadeIn("slow");
        $(".fondoportadaone").fadeOut("slow");
    } else {
        $(".fondoportada").fadeOut("slow");
        $(".fondoportadaone").fadeIn("slow");

    }
})


$("#example22").html("example22")