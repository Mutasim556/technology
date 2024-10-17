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

$(document).on('submit','#add_support_form',function(e){
    e.preventDefault();
    $('#add_support_form #submit_btn').html(submit_btn_after+'....');
    $('#add_support_form #submit_btn').addClass('disabled');
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
            $('button[type=submit]', '#add_support_form').html(submit_btn_before);
            $('button[type=submit]', '#add_support_form').removeClass('disabled');
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
            $('button[type=submit]', '#add_support_form').html(submit_btn_before);
            $('button[type=submit]', '#add_support_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '##add_support_form').click();
                });
                
            }

            $('#add_support_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).prev('span').find('.select2-selection--single').attr('id','')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#add_support_form #'+idx);
                var exp = idx.replace('.','_');
                $('#add_support_form #'+exp).addClass('border-danger is-invalid')
                $('#add_support_form #'+exp).next('span').find('.select2-selection--single').attr('id','invalid-selec2')
                $('#add_support_form #'+exp).next('.err-mgs').empty().append(val);
           
                $('#add_support_form #'+exp+"_err").empty().append(val);
            })
        }
    })
});