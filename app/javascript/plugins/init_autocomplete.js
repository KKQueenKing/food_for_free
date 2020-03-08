import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('food_donation_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
