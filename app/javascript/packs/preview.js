if (document.URL.match( /edit/ )) {
  document.addEventListener('DOMContentLoaded', function(){
    const ImageList = document.getElementById('image-list');

    const createImageHTML = (filing) => {

      const imageElement = document.createElement('div');

      const filingImage = document.createElement('img');
      filingImage.setAttribute('src', filing);
      filingImage.setAttribute('width', '100');
      filingImage.setAttribute('height', '100');

      imageElement.appendChild(filingImage);
      ImageList.appendChild(imageElement);
    };

    document.getElementById('user_image').addEventListener('change', function(e){
      const imageContent = document.querySelector('img');
      if (imageContent){
        imageContent.remove();
      }
      const file = e.target.files[0];
      const filing = window.URL.createObjectURL(file);

      createImageHTML(filing);
    });
  });
}