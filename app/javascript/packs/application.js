// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import "@hotwired/turbo-rails";
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import ClipboardJS from 'clipboard'
import "../stylesheets/application"
Rails.start()
ActiveStorage.start()

document.addEventListener('turbo:load', () => {
  console.log("console works")
  const copy = document.querySelector('.copy');
  const tooltip = document.querySelector('#tooltip');

  var clipboard = new ClipboardJS('.copy');
  clipboard.on('success', function (e) {
    console.info('Action:', e.action);
    console.info('Text:', e.text);
    console.info('Trigger:', e.trigger);
    e.clearSelection();

  });

})

import "controllers"
