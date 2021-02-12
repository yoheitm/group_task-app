function pull (){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownChild = document.querySelectorAll(".pull-down-list")
  const newGroupButton = document.getElementById("new-group-button")
  const groupLinkButton = document.querySelectorAll(".group-link-button")
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
  pullDownChild.forEach(function(list){
    list.addEventListener("mouseover", () => {
      list.setAttribute("style", "background-color:#ffe4f0;")
    });
    list.addEventListener("mouseout", () => {
      list.removeAttribute("style", "background-color:#ffe4f0;")
    });
  });
  newGroupButton.addEventListener("mouseover", () => {
    newGroupButton.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  newGroupButton.addEventListener("mouseout", () => {
    newGroupButton.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  groupLinkButton.forEach(function(group){
    group.addEventListener("mouseover", () => {
      group.setAttribute("style", "color:gray;")
    });
    group.addEventListener("mouseout", () => {
      group.removeAttribute("style", "color:gray;")
    });
  });
}

window.addEventListener('load', pull)