function pull (){
  const pullDownButton = document.getElementById("lists");
  const pullDownParents = document.getElementById("pull-down");
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
  const pullDownChild = document.querySelectorAll(".pull-down-list");
  pullDownChild.forEach(function(list){
    list.addEventListener("mouseover", () => {
      list.setAttribute("style", "background-color:#5aa357;")
    });
    list.addEventListener("mouseout", () => {
      list.removeAttribute("style", "background-color:#5aa357;")
    });
  });

  const newGroupButton = document.getElementById("new-group-button");
  newGroupButton.addEventListener("mouseover", () => {
    newGroupButton.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  newGroupButton.addEventListener("mouseout", () => {
    newGroupButton.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });

  const groupLinkButton = document.querySelectorAll(".group-link-button");
  groupLinkButton.forEach(function(group){
    group.addEventListener("mouseover", () => {
      group.setAttribute("style", "color:gray;")
    });
    group.addEventListener("mouseout", () => {
      group.removeAttribute("style", "color:gray;")
    });
  });

  const groupDrop = document.querySelectorAll(".drop-icon");
  groupDrop.forEach(function(btn){
    btn.addEventListener("mouseover", () => {
      btn.setAttribute("style", "background-color:hsl(0, 75%, 55%);")
    });
    btn.addEventListener("mouseout", () => {
      btn.removeAttribute("style", "background-color:hsl(0, 75%, 55%);")
    });
  });
  const groupJoin = document.querySelectorAll(".join-icon");
  groupJoin.forEach(function(btn){
    btn.addEventListener("mouseover", () => {
      btn.setAttribute("style", "background-color:hsl(143, 73%, 45%);")
    });
    btn.addEventListener("mouseout", () => {
      btn.removeAttribute("style", "background-color:hsl(143, 73%, 45%);")
    });
  });
  const internalLists = document.getElementById("internal-lists");
  const internalListsParents = document.getElementById("group-internal-pull-down");
  internalLists.addEventListener('click', () => {
    if (internalListsParents.getAttribute("style") == "display:none;") {
      internalListsParents.removeAttribute("style", "display:none;")
    } else {
      internalListsParents.setAttribute("style", "display:none;")
    }
  });
  internalLists.addEventListener("mouseover", () => {
    internalLists.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  internalLists.addEventListener("mouseout", () => {
    internalLists.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });

  const externalLists = document.getElementById("external-lists");
  const externalListsParents = document.getElementById("group-external-pull-down");
  externalLists.addEventListener('click', () => {
    if (externalListsParents.getAttribute("style") == "display:block;") {
      externalListsParents.removeAttribute("style", "display:block;")
    } else {
      externalListsParents.setAttribute("style", "display:block;")
    }
  });
  externalLists.addEventListener("mouseover", () => {
    externalLists.setAttribute("style", "background-color:rgb(0, 95, 48);")
  });
  externalLists.addEventListener("mouseout", () => {
    externalLists.removeAttribute("style", "background-color:rgb(0, 95, 48);")
  });

  const groupInfo = document.getElementById("group-info");
  const groupPullDown = document.getElementById("group-pull-down");
  groupInfo.addEventListener('click', () => {
    if (groupPullDown.getAttribute("style") == "display:block;") {
      groupPullDown.removeAttribute("style", "display:block;")
    } else {
      groupPullDown.setAttribute("style", "display:block;")
    }
  });
  groupInfo.addEventListener("mouseover", () => {
    groupInfo.setAttribute("style","background-color:rgb(0, 95, 48);")
  });
  groupInfo.addEventListener("mouseout", () => {
    groupInfo.removeAttribute("style","background-color:rgb(0, 95, 48);")
  });
  
  const submitBtn = document.getElementById("submit-btn");
  submitBtn.addEventListener("mouseover", () => {
    submitBtn.setAttribute("style","background-color:#4e214e;")
  });
  submitBtn.addEventListener("mouseout", () => {
    submitBtn.removeAttribute("style","background-color:#4e214e;")
  });
}

window.addEventListener('load', pull)