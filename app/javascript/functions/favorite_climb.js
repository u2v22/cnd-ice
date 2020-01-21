const favoriteClimb = () => {
  if (document.getElementById('fav-heart')) {
    const toggle_fav = document.getElementById('fav-heart')
    toggle_fav.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('fas');
      event.currentTarget.classList.toggle('far');
    })
  }
}

export { favoriteClimb }
