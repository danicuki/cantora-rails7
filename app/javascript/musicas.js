import $ from "jquery"

export function setupJQuery() {
  $(".albuns img").click(function (event) {
    $(".albuns img").removeClass("album-selected")
    $(this).addClass("album-selected")
    $(".album").hide()
    $("#album-" + event.target.id).show()
  })

  $(function () {
    $(".song").click(function () {
      $(this).find("div").toggle()
    })
    $(".album").hide()
    $("#album-eueela").show()
  })
}
