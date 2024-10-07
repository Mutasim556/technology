
$(document).on('change','#solution_tag',function(){
    if($(this).is(':checked')){
        $('#'+$(this).val()).show('slow');
    }else{
        $('#'+$(this).val()).hide('slow');
    }
})
$(document).on('click','#add_new_download_btn',function(){
    $('#another_download').append(`
            <div class="row">
                <div class="form-group col-md-3">
                    <label for="">${download_icon}</label>
                    <input type="file" class="form-control" name="downloads_icon[]">
                    <span class="text-danger err-mgs-downloads-icon"></span>
                </div>
                <div class="form-group col-md-4">
                    <label for="">${download_title}</label>
                    <input type="text" class="form-control" name="downloads_title[]">
                    <span class="text-danger err-mgs-downloads-title"></span>
                </div>
                <div class="form-group col-md-3">
                    <label for="">${download_file}</label>
                    <input type="file" class="form-control" name="downloads_file[]">
                    <span class="text-danger err-mgs-downloads-file"></span>
                </div>
                <div class="form-group col-md-2" style="padding-top:30px;">
                    <button type="button" class="btn btn-danger form-control" id="add_new_download_remove_btn">${download_remove}</button>
                </div>
            </div>
        `);
})

$(document).on('click','#reset_btn',function(){
    $('#add_solution_form')[0].reset();
    
})

$(document).on('click','#add_new_download_remove_btn',function(){
    $(this).closest('div').parent().remove();
})
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

$(document).on('submit','#add_solution_form',function(e){
    e.preventDefault();
    $('#add_solution_form #submit_btn').html(submit_btn_after+'....');
    $('#add_solution_form #submit_btn').addClass('disabled');
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

        },
        error: function (err) {
            $('button[type=submit]', '#add_solution_form').html(submit_btn_before);
            $('button[type=submit]', '#add_solution_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '##add_solution_form').click();
                });
                
            }

            $('#add_solution_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                console.log('#add_solution_form #'+idx);
                
                $('#add_solution_form #'+idx).addClass('border-danger is-invalid')
                $('#add_solution_form #'+idx).next('.err-mgs').empty().append(val);
                $('#add_solution_form #'+idx+"_err").empty().append(val);
            })
        }
    })
});