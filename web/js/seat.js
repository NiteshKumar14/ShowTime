var seats;
var array1;
$(document).ready(function() {

    seats = document.getElementById("reserved").value;
    alert("seats reserved are " + seats);
    array1 = seats.split(',');
    alert(array1[0])
    var i;
    for (i = 0; i < array1.length; i++) {
        let set = document.getElementById(array1[i].toString());

        set.disabled = true;



    }


});




$('input[type="checkbox"]').click(function() {
    if ($(this).prop("checked") == true) {
        array1.push($(this).attr('id'));
        alert("checked" + $(this).attr('id'));
    }
    if ($(this).prop("checked" == false)) {

        alert("unchecked" + this.attr('id'));

    }
    if (!$(this).is(':checked')) {
        var index = array1.indexOf($(this).attr('id'));
        alert("index is" + index);
        if (index > -1) {
            array1.splice(index, 1);
        }
    }




});
document.getElementById("PROCEED").addEventListener("click", function() {

    document.getElementById("reserved").value = array1.join();
    document.getElementById("reserved").type = "text";
    alert(array1);
});