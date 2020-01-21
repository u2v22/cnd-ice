const favoriteClimb = () => {
  if (document.querySelector('.fas')) {
    const toggle_fav = document.querySelector('.fas')
    toggle_fav.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('favorited');
    })
  }
}

export { favoriteClimb }
