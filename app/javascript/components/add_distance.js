var i = 1;
function duplicate() {
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
      duplicate();
    });
  }
}

const submitForm = () => {
  const submitButton = document.getElementById('submitform');
  if (submitButton) {
    submitButton.addEventListener('click', (e) => {
      e.preventDefault();
      Rails.fire(e.currentTarget.closest('form_new_event1'), 'submit')
    });
  }
}


// const initForm = () => {
//   const activities = document.querySelectorAll('#user_activity_level');
//   activities.forEach( (element) => {
//     element.addEventListener('change', (e) => {
//       Rails.fire(e.currentTarget.closest('form'), 'submit')
//     });
//   });
// }
// export default initForm;
//

export { addDistance };
