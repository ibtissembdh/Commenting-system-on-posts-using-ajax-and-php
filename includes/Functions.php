<?php

    function select()
    {
        global $db;

        $body ="";

        $result = $db->query('SELECT posts.id, title, content, creation_date ,count(comments.post_id) AS comment_number FROM posts LEFT JOIN comments ON comments.post_id = posts.id GROUP BY posts.id ');

        foreach ($result as $row)
        {
            
            $body .=' 
                 <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">         
                        <div class="card-body">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>'.htmlspecialchars($row["title"] ,ENT_QUOTES).'</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em"> ibtissem Article </text></svg>
                            <p class="card-text">'.htmlspecialchars($row["content"] ,ENT_QUOTES).'</p>
                            <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                            <button  id="btn_get_comments" type="button" class="btn btn-sm btn-outline-secondary" data-id="'.htmlspecialchars($row["id"],ENT_QUOTES).'"> ('.htmlspecialchars($row["comment_number"],ENT_QUOTES).') comments  </button>
                                            <button  id="btn_hide_comments" type="button" class="btn btn-sm btn-outline-secondary"  data-id="'.htmlspecialchars($row["id"],ENT_QUOTES).'" >Hide</button>
                                    </div>
                                    <small class="text-muted">'.htmlspecialchars($row["creation_date"],ENT_QUOTES).'</small>         
                            </div>
                            
                        </div>
                        <div id="commentSection'.htmlspecialchars($row["id"],ENT_QUOTES).'" class="card-body"  > </div>
                    </div>
                </div>
            
            
            ';
        }

        return $body;
    

    }
    

    function select_comments()
    {
        
       
        global $db;
        $id = $_POST['id'];

        $data =' 
                    
                <div class="input-group mb-3">
                    <input type="text" name= "comment" id="comment'.$id.'" class="form-control m-input" placeholder=" entrer your comment" autocomplete="on" > 
                    <div class="input-group-append">
                            <button id="addComment" type="button" class="btn btn-primary" data-id="'.$id.'">comment</button>
                    </div>
                    <p id="commentStatuts'.$id.'" > </p>
                </div>
               
                    

            
            
            ';
            
        $comments = $db->query("SELECT id, comment, comment_date  FROM comments WHERE post_id = '$id' ORDER BY comment_date DESC");

            if( $comments )
            {
                $data .='
                    <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">comment</th>
                            <th scope="col">comment date</th>
                        </tr>
                    </thead>
                        
                    <tbody>
                
                ';
                    
                foreach( $comments as $comment)
                {
                    $data .=' 
                        <tr>
                                <th scope="row">'.htmlspecialchars($comment["id"],ENT_QUOTES).' </th>
                                <td>'.htmlspecialchars($comment["comment"],ENT_QUOTES).'</td>
                                <td>'.htmlspecialchars($comment["comment_date"],ENT_QUOTES).'</td>
                        </tr>
                         ';
                }

                
                $data .='
                        </tbody>
                        </table>' ;

            }else {
                $data .='  <div> no comment add </div>  ';

            }
        
           



        echo $data;
     

    }


    function insert()
    {
        global $db ;

        $id = htmlspecialchars($_POST['id'] );

        $comment = htmlspecialchars($_POST['comment']);

        $db->Query("INSERT INTO comments(post_id, comment, comment_date) VALUES('$id',' $comment ', NOW())");

    
         echo $id;

       
    }

    




   