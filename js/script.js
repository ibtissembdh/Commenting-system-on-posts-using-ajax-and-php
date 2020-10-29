
$(document).ready(function(){

   
    get_comments();
    insert_comment();
    
   

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

function insert_comment()
{
    $(document).on('click' , '#addComment' , function()
    {

        var id= $(this).attr('data-id');
        var comment = $('#comment'+ id).val();
        
        if( comment == "")
        {
            $("#commentStatuts"+ id).html('veuillez remplir le champ svp');

            

        }else{

            $.ajax(
                {
                    url:"insert.php",
                    method:"POST",
                    data:{id:id , comment:comment},
                    success:function (data) {

                        
                       get_comment(data);
               
                    }
   
               });
   

        }
       
    });


}

function get_comment(data)
{
    var id = data;
        $.ajax(
             {
                 url:"select.php",
                 method:"POST",
                 data:{id:id},
                 success:function (data) {

                     $("#commentSection"+ id).html(data);
                     
                 }

            });

    
}



