const addFavResponse = () => {
  document.body.addEventListener('ajax:error', function(event) {
    var detail = event.detail;
    console.log(detail);
  });
}

export {addFavResponse}
