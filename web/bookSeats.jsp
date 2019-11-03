<%-- 
    Document   : bookSeats
    Created on : Oct 30, 2019, 7:15:26 PM
    Author     : Nitesh Kr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

</head>
 <link rel="stylesheet" href="css/materialize.min.css">

<script defer type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>

<script defer src="js/seat.js"></script>


<body>
      <%
            if(session.getAttribute("id")==null)

            response.sendRedirect("signin.jsp");             
         %>
         
        
         <form method="POST" action="payment.jsp" id="seats_form" >
              <input type="hidden" value="<%=  request.getAttribute("seat_booked") %>" id="reserved">
         <input type="hidden" id="client_seats" name="client_seats">
        <table>
            <thead>
                <tr>
                    <td>Row Name</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                    <td>6</td>
                    <td>7</td>
                    <td>8</td>
                    <td>9</td>
                    <td>10</td>
                    <td>11</td>
                    <td>12</td>
                    <td>13</td>
                    <td>14</td>
                    <td>15</td>
                    <td>16</td>
                    <td>17</td>
                    <td>18</td>
                    <td>19</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>A</td>
                    <td>
                        
                        <label for="A1">
                          <input type="checkbox" class="fiiled-in" id="A1" name="check" >
                          <span class="label-text"></span>
                         
                        </label>

                        
                    </td>
                    <td>
                        
                            <label for="A2">
                              <input type="checkbox" class="filled-in" id="A2" name="check" >
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A3">
                              <input type="checkbox" class="filled-in" id="A3" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A4">
                              <input type="checkbox" class="filled-in" id="A4" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A5">
                              <input type="checkbox" class="filled-in" id="A5" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A6">
                              <input type="checkbox" class="filled-in" id="A6" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A7">
                              <input type="checkbox" class="filled-in" id="A7" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A8">
                              <input type="checkbox" class="filled-in" id="A8" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A9">
                              <input type="checkbox" class="filled-in" id="A9" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A10">
                              <input type="checkbox" class="filled-in" id="A10" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A11">
                              <input type="checkbox"  id="A11" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A12">
                              <input type="checkbox" class="filled-in" id="A12" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A13">
                              <input type="checkbox" class="filled-in" id="A13" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A14">
                              <input type="checkbox" class="filled-in" id="A14" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A15">
                              <input type="checkbox" class="filled-in" id="A15" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A16">
                              <input type="checkbox" class="filled-in" id="A16" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A17">
                              <input type="checkbox" class="filled-in" id="A17" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A18">
                              <input type="checkbox" class="filled-in" id="A18" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A19">
                              <input type="checkbox" class="filled-in" id="A19" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="A20">
                              <input type="checkbox" class="filled-in" id="A20" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                </tr>
                <tr>
                    <td>B</td>
                    <td>
                        
                            <label for="B1">
                          <input type="checkbox" class="filled-in" id="B1" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                        
                    </td>
                    <td>
                        
                            <label for="B2">
                              <input type="checkbox" class="filled-in" id="B2" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B3">
                              <input type="checkbox" class="filled-in" id="B3" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B4">
                              <input type="checkbox" class="filled-in" id="B4" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B5">
                              <input type="checkbox" class="filled-in" id="B5" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B6">
                              <input type="checkbox" class="filled-in" id="B6" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B7">
                              <input type="checkbox" class="filled-in" id="B7" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B8">
                              <input type="checkbox" class="filled-in" id="B8" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B9">
                              <input type="checkbox" class="filled-in" id="B9" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B10">
                              <input type="checkbox" class="filled-in" id="B10" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B11">
                              <input type="checkbox" class="filled-in" id="B11" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B12">
                              <input type="checkbox" class="filled-in" id="B12" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B13">
                              <input type="checkbox" class="filled-in" id="B13" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B14">
                              <input type="checkbox" class="filled-in" id="B14" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B15">
                              <input type="checkbox" class="filled-in" id="B15" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B16">
                              <input type="checkbox" class="filled-in" id="B16" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B17">
                                  <input type="checkbox" class="filled-in" id="B17" name="check">
                                  <span class="label-text"></span>
                                 
                                </label>

                        
                    </td>
                    <td>
                        
                            <label for="B18">
                              <input type="checkbox" class="filled-in" id="B18" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                        
                    </td>
                    <td>
                        
                            <label for="B19">
                                  <input type="checkbox" class="filled-in" id="B19" name="check">
                                  <span class="label-text"></span>
                                 
                                </label>

                        
                    </td>
                    <td>
                        
                            <label for="B20">
                                  <input type="checkbox" class="filled-in" id="B20" name="check">
                                  <span class="label-text"></span>
                                 
                                </label>

                        
                    </td>
                </tr>
                <td>C</td>
                <td>
                    
                        <label for="C1">
                      <input type="checkbox" class="filled-in" id="C1" name="check">
                      <span class="label-text"></span>
                     
                    </label>

                    
                </td>
                <td>
                    
                        <label for="C2">
                          <input type="checkbox" class="filled-in" id="C2" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C3">
                          <input type="checkbox" class="filled-in" id="C3" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C4">
                          <input type="checkbox" class="filled-in" id="C4" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C5">
                          <input type="checkbox" class="filled-in" id="C5" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C6">
                          <input type="checkbox" class="filled-in" id="C6" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C7">
                          <input type="checkbox" class="filled-in" id="C7" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C8">
                          <input type="checkbox" class="filled-in" id="C8" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C9">
                          <input type="checkbox" class="filled-in" id="C9" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C10">
                          <input type="checkbox" class="filled-in" id="C10" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C11">
                          <input type="checkbox" class="filled-in" id="C11" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C12">
                          <input type="checkbox" class="filled-in" id="C12" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C13">
                          <input type="checkbox" class="filled-in" id="C13" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C14">
                          <input type="checkbox" class="filled-in" id="C14" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C15">
                          <input type="checkbox" class="filled-in" id="C15" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C16">
                          <input type="checkbox" class="filled-in" id="C16" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C17">
                              <input type="checkbox" class="filled-in" id="C17" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                    
                </td>
                <td>
                    
                        <label for="C18">
                          <input type="checkbox" class="filled-in" id="C18" name="check">
                          <span class="label-text"></span>
                         
                        </label>

                    
                </td>
                <td>
                    
                        <label for="C19">
                              <input type="checkbox" class="filled-in" id="C19" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                    
                </td>
                <td>
                    
                        <label for="C20">
                              <input type="checkbox" class="filled-in" id="C20" name="check">
                              <span class="label-text"></span>
                             
                            </label>

                    
                </td>
                </tr>
        </table>
          
         <input type="hidden" name="movie_name" value=" <%= request.getParameter("movie_name") %>">
         <input type="hidden" name="date" value="<%= request.getParameter("date")  %>">
    
         <input type="hidden" name="slot" value="<%= request.getParameter("slot") %>">
         <input type="hidden" name="theatre_name" value=" <%=  request.getParameter("theatre_name") %>">
         <input type="hidden" name="screen_id" value="<%= request.getParameter("screen_id") %>">
         <input type="hidden" name="timing" value="<%=  request.getParameter("timing") %>">
        <input type="submit" value="PROCEED" ID="PROCEED">
    </form>
</body>

</html>