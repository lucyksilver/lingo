const lengthSelection = () => {
  const lengths = document.querySelectorAll("#new_lesson .length .form-check-label");
  lengths.forEach((length) => {
    length.addEventListener("click", (event) => {
      // event.preventDefault();

      const otherCard = document.querySelector(".length.tag-active");
      if (otherCard) {

        otherCard.classList.remove("tag-active");
      }
      event.currentTarget.parentNode.classList.toggle('tag-active');
    });
  });
};



export { lengthSelection }
