
$(document).on('change','#solution_tag',function(){
    if($(this).is(':checked')){
        $('#'+$(this).val()).show('slow');
    }else{
        $('#'+$(this).val()).hide('slow');
    }
})
$(document).on('click','#add_new_download_btn',function(){
    download_count++;
    $('#another_download').append(`
            <div class="row">
                <div class="form-group col-md-3">
                    <label for="">${download_icon}</label>
                    <input type="file" class="form-control" id="downloads_icon_${download_count}" name="downloads_icon[]">
                    <span class="text-danger err-mgs" id="downloads_icon_${download_count}_err"></span>
                </div>
                <div class="form-group col-md-4">
                    <label for="">${download_title}</label>
                    <input type="text" class="form-control" id="downloads_title_${download_count}" name="downloads_title[]">
                    <span class="text-danger err-mg" id="downloads_title_${download_count}_err"></span>
                </div>
                <div class="form-group col-md-3">
                    <label for="">${download_file}</label>
                    <input type="file" class="form-control" id="downloads_file_${download_count}" name="downloads_file[]">
                    <span class="text-danger err-mgs" id="downloads_file_${download_count}_err"></span>
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
    download_count--;
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
        success: function (data) {
            $('button[type=submit]', '#add_solution_form').html(submit_btn_before);
            $('button[type=submit]', '#add_solution_form').removeClass('disabled');
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
                // console.log('#add_solution_form #'+idx);
                var exp = idx.replace('.','_');
                $('#add_solution_form #'+exp).addClass('border-danger is-invalid')
                $('#add_solution_form #'+exp).addClass('border-danger is-invalid')
                $('#add_solution_form #'+exp).next('.err-mgs').empty().append(val);
           
                $('#add_solution_form #'+exp+"_err").empty().append(val);
            })
        }
    })
});


$(document).on('submit','#edit_solution_form',function(e){
    e.preventDefault();
    $('#edit_solution_form #submit_btn').html(submit_btn_after+'....');
    $('#edit_solution_form #submit_btn').addClass('disabled');
    var formData = new FormData(this);
    $.ajax({
        type: "POST",
        url: base_url+'/admin/solution/'+$('#solution_id').val(),
        data: formData,
        dataType: 'JSON',
        contentType: false,
        cache: false,
        processData: false,
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') 
        },
        success: function (data) {
            $('button[type=submit]', '#edit_solution_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_solution_form').removeClass('disabled');
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
            $('button[type=submit]', '#edit_solution_form').html(submit_btn_before);
            $('button[type=submit]', '#edit_solution_form').removeClass('disabled');
            if(err.status===403){
                var err_message = err.responseJSON.message.split("(");
                swal({
                    icon: "warning",
                    title: "Warning !",
                    text: err_message[0],
                    confirmButtonText: "Ok",
                }).then(function(){
                    $('button[type=button]', '##edit_solution_form').click();
                });
                
            }

            $('#edit_solution_form .err-mgs').each(function(id,val){
                $(this).prev('input').removeClass('border-danger is-invalid')
                $(this).prev('textarea').removeClass('border-danger is-invalid')
                $(this).empty();
            })
            $.each(err.responseJSON.errors,function(idx,val){
                // console.log('#edit_solution_form #'+idx);
                var exp = idx.replace('.','_');
                $('#edit_solution_form #'+exp).addClass('border-danger is-invalid')
                $('#edit_solution_form #'+exp).addClass('border-danger is-invalid')
                $('#edit_solution_form #'+exp).next('.err-mgs').empty().append(val);
           
                $('#edit_solution_form #'+exp+"_err").empty().append(val);
            })
        }
    })
});