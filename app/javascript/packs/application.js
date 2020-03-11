import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initDeliveryDistance } from '../plugins/init_delivery_distance';

import '../plugins/init_flatpickr.js';
import { initMultistepForm } from "../plugins/init_multistepform";

initMultistepForm();

initMapbox();
initAutocomplete();
initDeliveryDistance();
