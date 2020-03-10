import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';



const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/katieking/ck7bg21mc02ko1jqjy7pg3ymu'
  });
};

// const addMarkersToMap = (map, markers) => {
//   markers.forEach((marker) => {
//     new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//   });
// };

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
  // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
  const element = document.createElement('div');
  const card = document.querySelector('.marker-card');
  const donationCard = document.querySelector('.donation-card');
  const close = document.querySelector('.close-card');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.width = '100px';
  element.style.height = '100px'; // add this
  element.addEventListener('mouseover', () => {
    element.style.width = '110px';
    element.style.height = '110px';
        });
  element.addEventListener('mouseout', () => {
    element.style.width = '100px';
    element.style.height = '100px';
        });
  element.addEventListener('click', (event) => {
    // card.innerHTML = `${marker.infoWindow}`;
    card.classList.remove('marker-card--active');
    setTimeout(() => { card.classList.add('marker-card--active') }, 500);
    // card.innerHTML = `${marker.infoWindow}`;
    donationCard.innerHTML = `${marker.infoWindow}`;
    // card.insertAdjacentHTML('afterbegin', `${marker.infoWindow}`);
      });
    // card.classList.remove('marker-card--active');
    // card.classList.remove('marker-card');
    // card.classList.add('marker-card');
    // card.classList.add('marker-card--active');
  close.addEventListener('click', (event) => {
    // card.innerHTML = `${marker.infoWindow}`;
    card.classList.remove('marker-card--active');
  });
  new mapboxgl.Marker(element)
    .setLngLat([ marker.lng, marker.lat ])
    // .setPopup(popup)
    .addTo(map);
  });
};

const updateUi = (card) => {
    // card.classList.remove('marker-card--active');
    card.classList.add('marker-card--active');
  };



const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 3000 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      // mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
