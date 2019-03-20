var i = 1;
function submitAndDuplicate() {
    var original = document.getElementById('form_new_event' + i);
    var clone = original.cloneNode(true); // "deep" clone
    clone.id = "form_new_event" + ++i; // there can only be one element with an ID
     // event handlers are not cloned
    original.insertAdjacentElement('afterend', clone);
}

const addDistance = () => {
  const addButton = document.getElementById('add-distance');
  if (addButton) {
    addButton.addEventListener('click', (e) => {
      e.preventDefault();
      submitAndDuplicate();
      console.log(i)
    });
  }
}

const submitForms  = () => {
    const submitButton = document.getElementById('submit-form');
    if (submitButton) {
    submitButton.addEventListener('click', (e) => {
      for (var n = 1; n <= i; n++) {
        console.log("toto" + n)
        var formEvent = document.getElementById('form_new_event' + n);
        setTimeout(function(){ formEvent.submit(); }, n * 100);
      }
      setTimeout(function(){ window.location.replace("http://localhost:3000/swim_races/"); }, (i + 1) * 100);
    });
  }
}



export { addDistance, submitForms };
