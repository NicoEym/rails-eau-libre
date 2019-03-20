var i = 1;
function submitAndDuplicate() {
    var original = document.getElementById('form_new_event' + i);
    original.submit();
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
    });
  }
}

const submitLastForm  = () => {
    const submitButton = document.getElementById('submit-form');
    if (submitButton) {
    submitButton.addEventListener('click', (e) => {
    document.getElementById("form_new_event" + i).submit();
    window.location.replace("http://localhost:3000/swim_races/");
    });
  }
}



export { addDistance, submitLastForm };
