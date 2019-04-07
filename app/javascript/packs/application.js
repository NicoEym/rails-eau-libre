import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { sideMenu } from '../components/side_menu';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { addDistance, submitForms } from '../components/add_distance';
import { initSweetalert, deleteIndex } from '../plugins/init_sweetalert';


initMapbox();
initAutocomplete();
addDistance();
submitForms();
sideMenu();

initSweetalert('#delete-race-icon', {
 title: "Êtes vous sûr(e)?",
  text: "Vous êtes sur le point de supprimer définitivement cette course.",
  icon: "warning"
}, (value) => {
  if (value === true) {
  const links = document.querySelectorAll('#delete-race-link');
  links[deleteIndex].click();
  }
});

initSweetalert('#delete-event-icon', {
 title: "Êtes vous sûr(e)?",
  text: "Vous êtes sur le point de supprimer définitivement cette épreuve.",
  icon: "warning"
}, (value) => {
  if (value===true) {
  const links = document.querySelectorAll('#delete-event-link');
    links[deleteIndex].click();
  }
});

