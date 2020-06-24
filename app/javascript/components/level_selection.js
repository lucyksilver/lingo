const levelSelection = () => {
  const levels = document.querySelectorAll("#new_lesson .level .form-check-label");
  levels.forEach((level) => {
    level.addEventListener("click", (event) => {
      // event.preventDefault();

      const otherCard = document.querySelector(".level.tag-active");
      if (otherCard) {

        otherCard.classList.remove("tag-active");
      }
      event.currentTarget.parentNode.classList.toggle('tag-active');
    });
  });
};



export { levelSelection }
