import swal from 'sweetalert';

var deleteIndex;


const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons) { // protect other pages
    var i = 0;
    swalButtons.forEach((swalButton) => {
      const buttonIndex = i
      swalButton.addEventListener('click', () => {
        deleteIndex = buttonIndex;
        swal(options).then(callback); // <-- add the `.then(callback)`
      });
      i = i + 1;
    });
  }
};

export { initSweetalert, deleteIndex};

