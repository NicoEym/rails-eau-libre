import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { sideMenu } from '../components/side_menu';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { addDistance, submitForms } from '../components/add_distance';

initMapbox();
initAutocomplete();
addDistance();
submitForms();
sideMenu();
