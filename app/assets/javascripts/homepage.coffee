$ ->

  $(".play-button").on "click", (e) ->
    $(e.target).addClass("hidden")
    $(".media-player").removeClass("hidden")

  $(".request-invite").on "click", (e) ->
    $.ajax
      type: "POST"
      url: "/api/request-invite"
      data: {email: $(".email").val()}
      success: (response) ->
        console.log response
