function even (){
  const eventLists = document.getElementById("event-lists");
  const eventListsParents = document.getElementById("events");
  eventLists.addEventListener('click', () => {
    if (eventListsParents.getAttribute("style") == "display:block;") {
      eventListsParents.removeAttribute("style", "display:block;")
    } else {
      eventListsParents.setAttribute("style", "display:block;")
    }
  });
  eventLists.addEventListener("mouseover", () => {
    eventLists.setAttribute("style", "background-color:#31722f;")
  });
  eventLists.addEventListener("mouseout", () => {
    eventLists.removeAttribute("style", "background-color:#31722f;")
  });

  const eventMenu = document.querySelectorAll(".event-menu");
  eventMenu.forEach(function(btn){
    btn.addEventListener("mouseover", () => {
      btn.setAttribute("style", "background-color:#aaaaaa;")
    });
    btn.addEventListener("mouseout", () => {
      btn.removeAttribute("style", "background-color:#aaaaaa;")
    });
  });

  const newMeeting = document.getElementById("new-meeting-btn");
  newMeeting.addEventListener('mouseover', () => {
    newMeeting.setAttribute("style", "background-color:rgb(236, 236, 236);")
  });
  newMeeting.addEventListener('mouseout', () => {
    newMeeting.removeAttribute("style", "background-color:rgb(236, 236, 236);")
  });

  const calendarRight = document.getElementById("calendar-right");
  calendarRight.addEventListener('mouseover', () =>{
    calendarRight.setAttribute("style","background-color:rgb(236, 236, 236);")
  });
  calendarRight.addEventListener('mouseout', () =>{
    calendarRight.removeAttribute("style","background-color:rgb(236, 236, 236);")
  });
  const calendarLeft = document.getElementById("calendar-left");
  calendarLeft.addEventListener('mouseover', () =>{
    calendarLeft.setAttribute("style","background-color:rgb(236, 236, 236);")
  });
  calendarLeft.addEventListener('mouseout', () =>{
    calendarLeft.removeAttribute("style","background-color:rgb(236, 236, 236);")
  });
}

window.addEventListener('load', even)