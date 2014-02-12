window.onload = function () {
  console.log('loaded');
  submitForm(document.querySelector('form'));
}

function submitForm (formElement) {
  formElement.addEventListener('submit', function (event) {
    event.preventDefault();
    console.log('Form Submitted');
    postData(this);
    this.reset();
  });
}

function postData (formElement) {
  var httpRequest = new XMLHttpRequest();

 httpRequest.addEventListener('load', function(){
  window.response = this.responseText;
  var responseObj = JSON.parse(window.response);
  var lastPost = responseObj[responseObj.length - 1];
   var ul = document.createElement('ul');

   for (var i = 0; i < posts.length; i++) {
       var li = document.createElement('li');
       li.innerHTML = "Title" + posts[i].title + "Content:"
      ul.appendChild(li);
   };

});

  httpRequest.open("POST", '/');

  var serializeData = new FormData(formElement);

  httpRequest.send(serializeData);
}

function addData (){
  var li = document.createElement('li');
}