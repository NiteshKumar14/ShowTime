var date;
$(document).ready(function() {

    alert("creating button");
    date = new Date();
    var d1 = document.createElement("button");
    d1.innerHTML = date.getDate().toString();
    d1.classList.add("btn");
    d1.classList.add("btn-secondary");
    d1.value = date.toString();

    document.getElementById("date1").appendChild(d1);



    for (var i = 1; i < 6; i++) {
        date.setDate(date.getDate() + 1);
        d1 = document.createElement("button");
        d1.innerHTML = date.getDate().toString();
        d1.classList.add("btn");
        d1.classList.add("btn-secondary");
        d1.value = date.toString();
        d1.name=date.getDate().toString();
        document.getElementById("date1").appendChild(d1);

    }




});