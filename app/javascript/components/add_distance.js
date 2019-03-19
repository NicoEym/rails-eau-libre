var i = 0;
function duplicate() {
    var original = document.getElementById('duplicater' + i);
    var clone = original.cloneNode(true); // "deep" clone
   clone.id = "duplicater" + ++i; // there can only be one element with an ID
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


export { addDistance };
