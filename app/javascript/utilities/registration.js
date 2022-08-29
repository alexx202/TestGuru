document.addEventListener('turbolinks:load', function() {
  let form = document.querySelector('form')
  let pass = form.elements.user_password
  let passConfirm = form.elements.user_password_confirmation

  if (form) {form.addEventListener('input', function() {
    if ((passConfirm) && (passConfirm.value != '')) {
      checkPassword(pass, passConfirm)
    }
  })}

})

function checkPassword(pass, passConfirm) {
  let checkCircle = passConfirm.parentNode.querySelector('.octicon-check-circle').classList
  let xCircle = passConfirm.parentNode.querySelector('.octicon-x-circle').classList

  if (pass.value == passConfirm.value) {
    checkCircle.remove('hide')
    xCircle.add('hide')
  } else if (pass.value != passConfirm.value) {
    checkCircle.add('hide')
    xCircle.remove('hide')
  }
}
