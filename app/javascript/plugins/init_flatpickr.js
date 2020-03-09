import flatpickr from "flatpickr";


flatpickr("#donation_availability_start_time", {
  minDate: "today",
  enableTime: true,
});

flatpickr("#donation_availability_end_time", {
  minDate: "today",
  enableTime: true,
});

