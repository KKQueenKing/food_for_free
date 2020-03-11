

const initDeliveryDistance = () => {
  const dropOffFalseInput = document.getElementById('food_donation_dropoff_false');
  const dropOffTrueInput = document.getElementById('food_donation_dropoff_true');
  const foodDonationDistanceLimit = document.querySelector('.food_donation_distance_limit');

  if (!dropOffFalseInput) {
    return;
  }
  dropOffFalseInput.addEventListener ('click', () => {
    foodDonationDistanceLimit.classList.add('invisible');
  });
    dropOffTrueInput.addEventListener ('click', () => {
    foodDonationDistanceLimit.classList.remove('invisible');
  });
}


export { initDeliveryDistance };
