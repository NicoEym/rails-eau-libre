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
    submitButton.addEventListener('click', (e) => {
      var i = 1;
      const formsEvent = document.querySelectorAll('#form_new_event');
        formsEvent.forEach((form) => {
            console.log("toto" + i)
            setTimeout(function(){ Rails.fire(form, 'submit'); }, i * 100);
            i = i + 1;
          });
      setTimeout(function(){ window.location.replace("http://localhost:3000/swim_races/"); }, i * 100);
    });
  }
}



export { addDistance, submitForms };
