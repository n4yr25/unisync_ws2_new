let form = document.getElementById('join-form')

form.addEventListener('submit', (e) => {
    e.preventDefault()
    let inviteCode = e.target.invite_link.value
    window.location = `meet.php?room=${inviteCode}` 
})