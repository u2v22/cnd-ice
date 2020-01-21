import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { favoriteClimb } from "../functions/favorite_climb";

favoriteClimb();

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
