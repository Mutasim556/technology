function getCategoryDetails(value,target_id){
    $.ajax({
        type: "GET",
        url: '' + value+"?target="+target_id,
        dataType: "JSON",
        success: function (data) {
            console.log(data);
            $('#'+target_id).empty().append(`<option value="" >Please Select</option>`);
            $.each(data,function(ley,value){
                $('#'+target_id).append('<option value="' + value.id + '">' + value.category_name + '</option>');
            })

            $('#'+target_id).trigger('change');
        },
        error: function () {

        }
    })
}


$(document).on('submit','#add_partner_form',function(e){
    e.preventDefault();
    $('#add_partner_form #submit_btn').html(submit_btn_after+'....');
    $('#add_partner_form #submit_btn').addClass('disabled');
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
        success: function (data) {
            $('button[type=submit]', '#add_partner_form').html(submit_btn_before);
            $('button[type=submit]', '#add_partner_form').removeClass('disabled');
            swal({
                icon: "success",
                title: data.title,
                text: data.text,
                confirmButtonText: data.confirmButtonText,
            }).then(function(){
                // this.removeAllFiles(true);
                window.location.reload()
            })
        },
        error: function (err) {
            $('button[type=submit]', '#add_partner_form').html(submit_btn_before);
            $('button[type=submit]', '#add_partner_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '##add_partner_form').click();
                });

            }

            $('#add_partner_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#add_partner_form #'+idx);
                var exp = idx.replace('.','_');
                $('#add_partner_form #'+exp).addClass('border-danger is-invalid')
                $('#add_partner_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#add_partner_form #'+exp).next('.err-mgs').empty().append(val);

                $('#add_partner_form #'+exp+"_err").empty().append(val);
            })
        }
    })
});


$(document).on('submit','#edit_partner_form',function(e){
    e.preventDefault();
    $('#edit_partner_form #submit_btn').html(submit_btn_after+'....');
    $('#edit_partner_form #submit_btn').addClass('disabled');
    var formData = new FormData(this);

    $.ajax({
        type: "POST",
        url: base_url+'/admin/partner/'+$('#partner_id').val(),
        data: formData,
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: function (data) {
            $('button[type=submit]', '#edit_partner_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_partner_form').removeClass('disabled');
            swal({
                icon: "success",
                title: data.title,
                text: data.text,
                confirmButtonText: data.confirmButtonText,
            }).then(function(){
                // this.removeAllFiles(true);
                window.location.reload()
            })
        },
        error: function (err) {
            $('button[type=submit]', '#edit_partner_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_partner_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '##edit_partner_form').click();
                });

            }

            $('#edit_partner_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#edit_partner_form #'+idx);
                var exp = idx.replace('.','_');
                $('#edit_partner_form #'+exp).addClass('border-danger is-invalid')
                $('#edit_partner_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#edit_partner_form #'+exp).next('.err-mgs').empty().append(val);

                $('#edit_partner_form #'+exp+"_err").empty().append(val);
            })
        }
    })
});

$(document).on('click','#delete_button',function(){
    var delete_id = $(this).closest('tr').data('id');
    var tblrow = $(this).closest('tr');
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
                url: 'partner/'+delete_id,
                data: {
                    _token : $("input[name=_token]").val(),
                },
                success: function (rdata) {
                    swal({
                        icon: "success",
                        title: rdata.title,
                        text: rdata.text,
                        confirmButtonText: rdata.confirmButtonText,
                    }).then(function () {
                        tblrow.remove();
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
