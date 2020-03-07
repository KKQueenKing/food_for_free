import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';



const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
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
  const cards = document.querySelectorAll('.donation-card');
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
    card.innerHTML = `${marker.infoWindow}`

      });
  // element.addEventListener('click', (event) => {
  //   cards.forEach(card => {
  //     card.classList.remove('donation-card--active');
  //   });
  //   cards[0].classList.add('donation-card--active');
  //   console.log(marker);
  //       });
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      // .setPopup(popup)
      .addTo(map);
  });
}


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
