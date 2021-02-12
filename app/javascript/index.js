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
  const pullDownChild = document.querySelectorAll(".pull-down-list")
  pullDownChild.forEach(function(list){
    list.addEventListener("mouseover", () => {
      list.setAttribute("style", "background-color:rgb(181, 201, 182);")
    });
    list.addEventListener("mouseout", () => {
      list.removeAttribute("style", "background-color:rgb(181, 201, 182);")
    });
  });
  const newGroupButton = document.getElementById("new-group-button")
  newGroupButton.addEventListener("mouseover", () => {
    newGroupButton.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  newGroupButton.addEventListener("mouseout", () => {
    newGroupButton.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  const groupLinkButton = document.querySelectorAll(".group-link-button")
  groupLinkButton.forEach(function(group){
    group.addEventListener("mouseover", () => {
      group.setAttribute("style", "color:gray;")
    });
    group.addEventListener("mouseout", () => {
      group.removeAttribute("style", "color:gray;")
    });
  });
  const groupInfo = document.getElementById("group-info")
  const groupPullDown = document.getElementById("group-pull-down")
  groupInfo.addEventListener('click', () => {
    if (groupPullDown.getAttribute("style") == "display:block;") {
      groupPullDown.removeAttribute("style", "display:block;")
    } else {
      groupPullDown.setAttribute("style", "display:block;")
    }
  });
  groupInfo.addEventListener("mouseover", () => {
    groupInfo.setAttribute("style","background-color:hsl(120, 64%, 11%);")
  });
  groupInfo.addEventListener("mouseout", () => {
    groupInfo.removeAttribute("style","background-color:hsl(120, 64%, 11%);")
  });
  const submitBtn = document.getElementById("submit-btn")
  submitBtn.addEventListener("mouseover", () => {
    submitBtn.setAttribute("style","background-color:#4e214e;")
  });
  submitBtn.addEventListener("mouseout", () => {
    submitBtn.removeAttribute("style","background-color:#4e214e;")
  });
}

window.addEventListener('load', pull)