var seats;
var array1;
var price;
var total = 0;

$(document).ready(function() {

    seats = document.getElementById("reserved").value;
    alert("seats reserved are " + seats);
    array1 = seats.split(',');
    //    alert(array1[0]);
    var i;
    for (i = 0; i < array1.length; i++) {
        let set = document.getElementById(array1[i].toString());
        set.checked=true;
        set.disabled = true;



    }
    price = document.createElement("INPUT");
    price.setAttribute("type", "text")
    price.setAttribute("value", "Total Price Rs." + total);
    price.setAttribute("disabled", true);
    document.body.appendChild(price);


});




$('input[type="checkbox"]').click(function() {
    if ($(this).prop("checked") == true) {
        array1.push($(this).attr('id'));
        alert("checked" + $(this).attr('id'));

        if ($(this).attr('id').toString().match(/^[A][0-9]+/)) {
            total = total + 200;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
        if ($(this).attr('id').toString().match(/^[B][0-9]+/)) {
            total = total + 300;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
        if ($(this).attr('id').toString().match(/^[C][0-9]+/)) {
            total = total + 400;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
    }



    if ($(this).prop("checked") == false) {

        alert("unchecked" + $(this).attr('id'));

    }
    if (!$(this).is(':checked')) {

        if ($(this).attr('id').toString().match(/^[A][0-9]+/g)) {
            total = total - 200;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
        if ($(this).attr('id').toString().match(/^[B][0-9]+/g)) {
            total = total - 300;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);

        }
        if ($(this).attr('id').toString().match(/^[C][0-9]+/g)) {
            total = total - 400;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
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
