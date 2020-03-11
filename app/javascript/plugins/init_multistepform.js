const multiStepFormEl = document.querySelector(".multi-step-form");

export const initMultistepForm = () => {
  if (multiStepFormEl) {
  const stepEls = multiStepFormEl.querySelectorAll(".centered-form");
  const nextStepButton = document.getElementById(
    "multi-step-form-step"
  );
  // const prevStepButtonEls = multiStepFormEl.querySelectorAll(
  //   ".js-multistep-form-step-previous-btn"
  // );

  // console.log(multiStepFormEl);
  // console.log(stepEls);
  // console.log(nextStepButtonEls);

  let stepNumber = 0;

    nextStepButton.addEventListener("click", () => {
      stepNumber = stepNumber + 1;
      updateUi();
      console.log(stepNumber);
    });


  // prevStepButtonEls.forEach(buttonEl => {
  //   buttonEl.addEventListener("click", () => {
  //     stepNumber = stepNumber - 1;
  //     updateUi();
  //   });
  // });

  const updateUi = () => {
    stepEls.forEach(stepEl => {
      stepEl.classList.remove("centered-form--active");
    });
    stepEls[stepNumber].classList.add("centered-form--active");
  };
};};

