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
    

