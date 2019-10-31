$(document).ready(function() {
    alert("fetching date");
    var btn = document.getElementById("currentDate");
    var d=new Date();
    var month=d.getMonth()+1;
    var day=d.getDate();
    var year=d.getFullYear();
    if(month.length <2)
        month='0'+month;
    if(day.length <2)
        day='0'+day;
    alert("date is "+year+'-'+month+'-'+day);
    btn.value=[year,month,day].join('-').toString();






});