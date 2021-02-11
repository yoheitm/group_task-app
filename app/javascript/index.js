function pull (){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  pullDownButton.addEventListener('click', () => {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  });
  pullDownButton.addEventListener("mouseover", () => {
    pullDownButton.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  pullDownButton.addEventListener("mouseout", () => {
    pullDownButton.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });
}

window.addEventListener('load', pull)