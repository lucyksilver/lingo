const lessonSelection = () => {
  const lessons = document.querySelectorAll("#new_lesson .languages .form-check-label");
  lessons.forEach((lesson) => {
    lesson.addEventListener("click", (event) => {
      // event.preventDefault();

      const otherCard = document.querySelector(".languages.tag-active");
      if (otherCard) {

        otherCard.classList.remove("tag-active");
      }
      event.currentTarget.parentNode.classList.toggle('tag-active');
    });
  });
};



export { lessonSelection }
