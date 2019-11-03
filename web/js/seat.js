/* global length1 */

var seats;
var array1;
var price;
var total = 0;
var length1;


$(document).ready(function() {

    seats = document.getElementById("reserved").value;
    alert("seats reserved are " + seats);
    array1 = seats.split(',');

    length1 = array1.length - 1;
    alert("length is" + length1);
    alert(array1[0]);
    var i;
    for (i = 0; i < array1.length; i++) {
        let set = document.getElementById(array1[i].toString());
       
        set.disabled = true;



    }
    price = document.createElement("INPUT");
    price.setAttribute("type", "text");
    price.setAttribute("value", "Total Price Rs." + total);
    price.setAttribute("disabled", true);
    document.getElementById("seats_form").appendChild(price);
   


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
            if(total>0)
            {total = total - 200;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);}
        }
        if ($(this).attr('id').toString().match(/^[B][0-9]+/g)) {
            if(total>0)
            {
                total = total - 300;
            
                price.setAttribute("value", "Total Price Rs." + total);
            
                alert("total" + total);
            }
        }
        if ($(this).attr('id').toString().match(/^[C][0-9]+/g)) {
           if(total>0){
            total = total - 400;
            price.setAttribute("value", "Total Price Rs." + total);
            alert("total" + total);
        }
        }
        var index = array1.indexOf($(this).attr('id'));
        alert("index is" + index);
        if (index > -1) {
            array1.splice(index, 1);
        }
    }




});
document.getElementById("PROCEED").addEventListener("click", function(event) {
    if(total==0)
    {   event.preventDefault();
        alert("please select a seat ")
        docment.location.reload();
    }
    var m = 0;
    var sets = "";
    alert("sets is" + sets);
    length1=length1+1;
    alert("length is" + length1);
    for (m = length1; m < array1.length; m++) {
        sets = sets + array1[m] + ",";
        alert("sets is" + sets);
    }
    alert("after" + sets);


    document.getElementById("client_seats").value = sets;
    document.getElementById("reserved").value = array1.join();
    document.getElementById("reserved").type = "text";
    document.getElementById("client_seats").type = "text";
    alert(array1);

});