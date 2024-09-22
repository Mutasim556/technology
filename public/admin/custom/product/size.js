$('#add_size_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after+'....');
    $('button[type=submit]', this).addClass('disabled');
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: form_url,
        data: formData,
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }, 
        success: function (rdata) {
            $('button[type=submit]', '#add_size_form').html(submit_btn_before);
            $('button[type=submit]', '#add_size_form').removeClass('disabled');
            swal({
                icon: "success",
                title: rdata.title,
                text: rdata.text,
                confirmButtonText: rdata.confirmButtonText,
            }).then(function(){
                let data = rdata.size;
                let update_status_btn = `<span class="badge badge-danger">${no_permission_mgs}</span>`;
                if(rdata.hasEditPermission){
                    update_status_btn = `<span class="mx-2">${data.size_status==0?'Inactive':'Active'}</span><input
                    data-status="${data.size_status==0?1:0}"
                    id="status_change" type="checkbox" data-toggle="switchery"
                    data-color="green" data-secondary-color="red" data-size="small" checked />`;
                }
                let action_option=`<span class="badge badge-danger">${no_permission_mgs}</span>`;
                if(rdata.hasAnyPermission){
                    action_option = `<div class="dropdown"><button class="btn btn-info text-white px-2 py-1 dropbtn">Action <i class="fa fa-angle-down"></i></button> <div class="dropdown-content">`;
                    if(rdata.hasEditPermission){
                        action_option = action_option + `<a data-bs-toggle="modal" style="cursor: pointer;" data-bs-target="#edit-size-modal" class="text-primary" id="edit_button"><i class=" fa fa-edit mx-1"></i>Edit</a>`;
                    }
                    if(rdata.hasDeletePermission){
                        action_option = action_option + `<a class="text-danger" id="delete_button" style="cursor: pointer;"><i class="fa fa-trash mx-1"></i> Delete</a>`;
                    }

                    action_option = action_option + `</div></div>`;
                }  
                
                $('#basic-1 tbody').append(`<tr id="trid-${data.id}" data-id="${data.id}"><td>${data.size_name}</td>
                <td class="text-center">${update_status_btn}</td>
                <td>${action_option}</td></tr>`);
                if(rdata.hasEditPermission){
                    new Switchery($('#trid-'+data.id).find('input')[0], $('#trid-'+data.id).find('input').data());
                }
                $('#add_size_form .err-mgs').each(function(id,val){
                    $(this).prev('input').removeClass('border-danger is-invalid')
                    $(this).prev('textarea').removeClass('border-danger is-invalid')
                    $(this).empty();
                })
                $('#add_size_form').trigger('reset');
                $('button[type=button]','#add_size_form').click();
            });
        },
        error: function (err) {

            $('button[type=submit]', '#add_size_form').html(submit_btn_before);
            $('button[type=submit]', '#add_size_form').removeClass('disabled');

            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '#add_size_form').click();
                });
                
            }
            
            $('#add_size_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                $('#add_size_form #'+idx).addClass('border-danger is-invalid')
                $('#add_size_form #'+idx).next('.err-mgs').empty().append(val);
            })
        }
    });
});

// Show data on edit modal
$(document).on('click', '#edit_button', function () {
    $('#edit_size_form').trigger('reset');
    let size = $(this).closest('tr').data('id');
    $.ajax({
        type: "get",
        url: 'size/' + size + "/edit",
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data) {
            $('#edit_size_form #size_id').val(data.id);
            $('#edit_size_form #size_name').val(data.size_name);
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

});

//update data
$('#edit_size_form').submit(function (e) {
    e.preventDefault();
    $('button[type=submit]', this).html(submit_btn_after+'....');
    $('button[type=submit]', this).addClass('disabled');
    var trid = '#trid-'+$('#size_id', this).val();
    var formData = new FormData(this);
    formData.append("_method","PUT");
    $.ajax({
        type: "post",
        url: 'size/' + $('#size_id','#edit_size_form').val(),
        data: formData,
        dataType: 'JSON',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            $('button[type=submit]', '#edit_size_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_size_form').removeClass('disabled');
            $('td:nth-child(1)',trid).html(data.size.size_name);
            swal({
                icon: "success",
                title: data.title,
                text: data.text,
                confirmButtonText: data.confirmButtonText,
            }).then(function () {
                $('#edit_size_form .err-mgs').each(function(id,val){
                    $(this).prev('input').removeClass('border-danger is-invalid')
                    $(this).prev('textarea').removeClass('border-danger is-invalid')
                    $(this).empty();
                })
                $('#edit_size_form').trigger('reset');
                $('button[type=button]', '#edit_size_form').click();
                

            });
        },
        error: function (err) {
            $('button[type=submit]', '#edit_size_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_size_form').removeClass('disabled');
            $('#edit_size_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                $('#edit_size_form #'+idx).addClass('border-danger is-invalid')
                $('#edit_size_form #'+idx).next('.err-mgs').empty().append(val);
            });
        }
    });
});

//update status
$(document).on('change','#status_change',function(){
    var status = $(this).data('status');
    var update_id = $(this).closest('tr').data('id');
    var cat_td = $(this).parent();
    cat_td.empty().append(`<i class="fa fa-refresh fa-spin"></i>`);
    $.ajax({
        type: "get",
        url: 'size/update/status/'+update_id+"/"+status,
        success: function (data) {
            cat_td.empty().append(`<span class="mx-2">${data.size_status==1?'Active':'Inactive'}</span><input data-status="${data.size_status==1?0:1}" id="status_change" type="checkbox" data-toggle="switchery" data-color="green"  data-secondary-color="red" data-size="small" ${data.size_status==1?'checked':''} />`);
            // parent_td.children('input').each(function (idx, obj) {
            //     new Switchery($(this)[0], $(this).data());
            // });
            new Switchery(cat_td.find('input')[0], cat_td.find('input').data());
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
});

//delete data
$(document).on('click','#delete_button',function(){
    var delete_id = $(this).closest('tr').data('id');
    swal({
        title: "Are you sure?",
        text: "Once deleted, you will not be able to recover this size",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            $.ajax({
                type: "delete",
                url: 'size/'+delete_id,
                data: {
                    _token : $("input[name=_token]").val(),
                },
                success: function (data) {
                    swal({
                        icon: "success",
                        title: "Congratulations !",
                        text: 'Size deleted successfully',
                        confirmButtonText: "Ok",
                    }).then(function () {
                        $('#trid-'+delete_id).hide();
                    });
                },
                error: function (err) {
                    var err_message = err.responseJSON.message.split("(");
                    swal({
                        icon: "warning",
                        title: "Warning !",
                        text: err_message[0],
                        confirmButtonText: "Ok",
                    }).then(function(){
                        $('#edit_brand_form').trigger('reset');
                        $('button[type=button]', '#edit_size_form').click();
                    });
                }
            });
           
        } else {
            swal("Delete request canceld successfully");
        }
    })
});