document.addEventListener('turbolinks:load', function () {
  let control = document.querySelector('.progress-bar')

  if (control) {
    let questions = control.dataset.questions
    let currentQuestion = control.dataset.questionNumber - 1
    let width = currentQuestion / questions * 100
    control.style.width = `${width}%`
  }
})
