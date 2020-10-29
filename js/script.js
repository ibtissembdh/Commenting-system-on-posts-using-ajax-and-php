
$(document).ready(function(){

   
    get_comments();
    
   

});





function get_comments()
{
    $(document).on('click' , '#btn_get_comments' , function()
    {
         var id= $(this).attr('data-id');
        

        $.ajax(
             {
                 url:"select.php",
                 method:"POST",
                 data:{id:id},
                 success:function (data) {

                     $("#commentSection"+ id).html(data);
                     
                 }

            });

    });
}

