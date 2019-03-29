function duplicate() {
    var original = document.querySelector('#form_new_event');

    var clone = original.cloneNode(true); // "deep" clone
    var eventsContainer = document.querySelector('#events-container');
    eventsContainer.insertAdjacentElement('afterbegin', clone);
    var original = document.querySelector('#form_new_event');
    original.reset();
  }

const addDistance = () => {
  const addButton = document.getElementById('add-distance');
  if (addButton) {
    addButton.addEventListener('click', (e) => {
      e.preventDefault();
      duplicate();
    });
  }
}

const submitForms  = () => {
    const submitButton = document.getElementById('submit-form');
    if (submitButton) {
      //setting the new url from a regex, in order to be able to redirect to swim_races/:id
      //first we get the url from the current page
    const url = window.location.href
    //regex to get every text after the /swim_events
    const path = /swim_events.*/g;
    // we create a new url excluding everything in the current url after /swim_events
    const newurl = url.replace(path, '')
    // event listener on the validate button
    submitButton.addEventListener('click', (e) => {
      var i = 1;
      const formsEvent = document.querySelectorAll('#form_new_event');
        //we submit each event form one after the other with a delay of 100 milliseconds
        formsEvent.forEach((form) => {
            setTimeout(function(){ Rails.fire(form, 'submit'); }, i * 100);
            i = i + 1;
          });
        //redirect after all event form have been submitted
      setTimeout(function(){ window.location.replace(newurl); }, i * 100);
    });
  }
}



export { addDistance, submitForms };
