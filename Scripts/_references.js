/// <reference path="jquery-1.7.1.js" />
/// <reference path="jquery-ui-1.8.20.js" />
/// <reference path="modernizr-2.5.3.js" />

var myModal = document.getElementById('myModal')
var myInput = document.getElementById('myInput')

myModal.addEventListener('shown.bs.modal', function () {
    myInput.focus()
})
