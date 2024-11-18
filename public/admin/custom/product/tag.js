//add form data
$('#add_tag_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after);
    $('button[type=submit]', this).addClass('disabled');
    $.ajax({
        type: "POST",
        url: form_url,
        data: $(this).serialize(),
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (rdata) {
            $('button[type=submit]', '#add_tag_form').html(submit_btn_before);
            $('button[type=submit]', '#add_tag_form').removeClass('disabled');
            let data = rdata.tag;
            swal({
                icon: "success",
                title: rdata.title,
                text: rdata.text,
                confirmButtonText: rdata.confirmButtonText,
            }).then(function(){
                let status_btn = `<span class="badge badge-danger">${no_permission_mgs}</span>`;
                let action_option = `<span class="badge badge-danger">${no_permission_mgs}</span>`;

                if(rdata.hasAnyPermission){
                    action_option = `<div class="dropdown"><button class="btn btn-info text-white px-2 py-1 dropbtn">Action <i class="fa fa-angle-down"></i></button> <div class="dropdown-content">`;

                    if(rdata.hasDeletePermission){
                        action_option = action_option + `<a class="text-danger" id="delete_button" style="cursor: pointer;"><i class="fa fa-trash mx-1"></i> Delete</a>`;
                    }

                    action_option = action_option + `</div></div>`;
                }
                $('#basic-1 tbody').append(`<tr id="trid-${data.id}" data-id="${data.id}"><td>${data.id}</td><td>${data.tag}</td><td>  ${action_option}</td></tr>`);


                $('#add_tag_form').trigger('reset');
                $('button[type=button]','#add_tag_form').click();
            });
        },
        error: function (err) {
            $('button[type=submit]', '#add_tag_form').html(submit_btn_before);
            $('button[type=submit]', '#add_tag_form').removeClass('disabled');
            $('#add_tag_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                $('#add_tag_form #'+idx).addClass('border-danger is-invalid')
                $('#add_tag_form #'+idx).next('.err-mgs').empty().append(val);
            })
        }
    });
});


//add form data
$('#add_sub_tag_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after);
    $('button[type=submit]', this).addClass('disabled');
    $.ajax({
        type: "POST",
        url: form_url,
        data: $(this).serialize(),
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (rdata) {
            $('button[type=submit]', '#add_sub_tag_form').html(submit_btn_before);
            $('button[type=submit]', '#add_sub_tag_form').removeClass('disabled');
            let data = rdata.tag;
            swal({
                icon: "success",
                title: rdata.title,
                text: rdata.text,
                confirmButtonText: rdata.confirmButtonText,
            }).then(function(){
                let status_btn = `<span class="badge badge-danger">${no_permission_mgs}</span>`;
                let action_option = `<span class="badge badge-danger">${no_permission_mgs}</span>`;

                if(rdata.hasAnyPermission){
                    action_option = `<div class="dropdown"><button class="btn btn-info text-white px-2 py-1 dropbtn">Action <i class="fa fa-angle-down"></i></button> <div class="dropdown-content">`;

                    if(rdata.hasDeletePermission){
                        action_option = action_option + `<a class="text-danger" id="delete_button" style="cursor: pointer;"><i class="fa fa-trash mx-1"></i> Delete</a>`;
                    }

                    action_option = action_option + `</div></div>`;
                }
                $('#basic-2 tbody').append(`<tr id="trid-${data.id}" data-id="${data.id}"><td>${data.id}</td><td>${data.tag.tag}</td><td>${data.name}</td><td>  ${action_option}</td></tr>`);


                $('#add_sub_tag_form').trigger('reset');
                $('button[type=button]','#add_sub_tag_form').click();
            });
        },
        error: function (err) {
            $('button[type=submit]', '#add_sub_tag_form').html(submit_btn_before);
            $('button[type=submit]', '#add_sub_tag_form').removeClass('disabled');
            $('#add_sub_tag_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                $('#add_sub_tag_form #'+idx).addClass('border-danger is-invalid')
                $('#add_sub_tag_form #'+idx).next('.err-mgs').empty().append(val);
            })
        }
    });
});

//delete tags
$(document).on('click','#delete_button',function(){
    var delete_id = $(this).closest('tr').data('id');
    var delete_type = $(this).closest('tr').data('type');
    swal({
        title: delete_swal_title,
        text: delete_swal_text,
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: 'tags/'+delete_id,
                data: {
                    _token : $("input[name=_token]").val(),
                    delete_type :delete_type,
                },
                success: function (data) {
                    swal({
                        icon: "success",
                        title: data.title,
                        text: data.text,
                        confirmButtonText: data.confirmButtonText,
                    }).then(function () {
                        $('#'+data.table_id+' #trid-'+delete_id).hide();
                    });
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    });
                }
            });

        } else {
            swal(delete_swal_cancel_text);
        }
    })
});


