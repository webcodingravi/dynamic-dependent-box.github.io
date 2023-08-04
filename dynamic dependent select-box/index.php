<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>dynamic dependent select-box</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" integrity="sha512-BnbUDfEUfV0Slx6TunuB042k9tuKe3xrD6q4mg5Ed72LTgzDIcLPxg6yI2gcMFRyomt+yJJxE+zJwNmxki6/RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css">
  
   
</head>


<body>

<div class="container">
<div class="row justify-content-center">
    <div class="col-6 mt-5">
        <h2 class="mt-5 ">Dynamic Dependent Select Box</h2><br>

        <form action="" method="">
            <label>Country : </label>
            <select class="form-select" id="country">
                <option value="">Select country</option>
            </select>
            <br><br>
            <label>State :</label>
            <select class="form-select" id="state">
            </select>

        </form>
    </div>
</div>
</div>





<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    function loadData(type, category_id) {
    $.ajax({
           url  : "load-cs.php",
           type : "POST",
           data :{type : type, id : category_id},
           success : function(data) {
            if(type == "stateData") {
                $("#state").html(data);
            }else {
                $("#country").append(data);
            }
           
           }

    });
}
loadData();

$("#country").on("change", function() {
    var country = $("#country").val();
    
    if(country != "") {
        loadData("stateData", country);
    }else {
        $("#state").html("");
    }

    
})
});

</script>

</body>
</html>