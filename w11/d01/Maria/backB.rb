<!DOCTYPE html>
<html>

<head>
  <title>Welcome to Backbone</title>
  <link rel="stylesheet" href="css/normalize.css" />
  <style>
    body {
      text-align: center;
    }
  </style>

  <script src="javascript/jquery-2.0.0.js"></script>
  <script src="javascript/underscore.js"></script>
  <script src="javascript/backbone.js"></script>
</head>

<body>
  <div id="container">
  </div>

  <script type="text/javascript">
    WelcomeView = Backbone.View.extend({
      className: "welcome",
      id: "the-welcome-view",
      initialize: function(){
        this.$el.appendTo( $("#container") );
        this.$el.append( $("<h1>Welcome!</h1>") );
      },
      events: {
        "click h1": "render",
        "click p": "tellEmHowYouFeel"
      },
      render: function(){
       
        this.$el.append( $("<p>").text("click") );
      },
      tellEmHowYouFeel: function(){
        alert("I feel great!");
      }
    });

    window.onload = function(){
      var intro = new WelcomeView();
    };
  </script>
</body>

</html>