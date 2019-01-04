$(document).ready(function(){
// alert("a")
    $.ajax({
        type: "GET",
        url: "php/danhsach_tailieu.php",
        data: "",
        dataType: "text",
        success: function (response){
            alert(response)
        },
        error : function(){
            alert("co loi");
        }
    });

})
