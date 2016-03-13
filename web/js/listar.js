$(document).ready(function() {

    $("#form").submit(function(event)
    {
        event.preventDefault();
        $.ajax({
            url: "send.jsp",
            type: "get",
            data: $("#form").serialize(),
            beforeSend: function()
            {
                
                
            },
            success: function(res)
            {
                $("#dos").html(res);
            }
        });

    });
    

});

