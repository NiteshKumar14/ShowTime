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
<link rel="stylesheet" href="css/seat.css">
<script defer src="js/seat.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>

<body>
    <input type="hidden" value="A1,A3,A4" id="reserved">
    <form method="POST">
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
                        <div class="example">
                            <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="A1" name="choice1" >
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A2" name="choice1" >
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A3" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A4" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A5" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A6" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A7" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A8" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A9" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A10" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A11" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A12" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A13" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A14" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A15" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A16" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A17" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A18" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A19" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="A20" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>B</td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="B1" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B2" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B3" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B4" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B5" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B6" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B7" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B8" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B9" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B10" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B11" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B12" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B13" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B14" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B15" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B16" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                                  <input type="checkbox" class="checkbox-button__input" id="B17" name="choice1">
                                  <span class="checkbox-button__control"></span>
                                 
                                </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="B18" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                                  <input type="checkbox" class="checkbox-button__input" id="B19" name="choice1">
                                  <span class="checkbox-button__control"></span>
                                 
                                </label>

                        </div>
                    </td>
                    <td>
                        <div class="example">
                            <label class="checkbox-button">
                                  <input type="checkbox" class="checkbox-button__input" id="B20" name="choice1">
                                  <span class="checkbox-button__control"></span>
                                 
                                </label>

                        </div>
                    </td>
                </tr>
                <td>C</td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                      <input type="checkbox" class="checkbox-button__input" id="C1" name="choice1">
                      <span class="checkbox-button__control"></span>
                     
                    </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C2" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C3" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C4" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C5" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C6" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C7" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C8" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C9" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C10" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C11" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C12" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C13" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C14" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C15" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C16" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="C17" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                          <input type="checkbox" class="checkbox-button__input" id="C18" name="choice1">
                          <span class="checkbox-button__control"></span>
                         
                        </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="C19" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                    </div>
                </td>
                <td>
                    <div class="example">
                        <label class="checkbox-button">
                              <input type="checkbox" class="checkbox-button__input" id="C20" name="choice1">
                              <span class="checkbox-button__control"></span>
                             
                            </label>

                    </div>
                </td>
                </tr>
        </table>
        <input type="submit" value="PROCEED" ID="PROCEED">
    </form>
</body>
<script defer src="seat.js"></script>

</html>