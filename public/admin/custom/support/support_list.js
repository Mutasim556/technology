$(document).on('click','#basic-1 #support_row',function(){
    let support_id = $(this).closest('tr').data('id');
    // alert(support_id);
    $.ajax({
        type: "get",
        url: 'support-details?support_id='+support_id,
        success: function (rdata) {
            var data = rdata.support_details;
            var download_data = '<a href="#" ><div class="row px-3" >';
            $.each(rdata.download_icon,function(key,val){
                download_data =download_data + `
                    <div class="col-md-3 py-2 px-2" style="box-shadow:0px 0px 5px grey;margin-right:20px">
                        <div class="row">
                            <div class="col-md-2">
                                <img style="height:30px" src="${base_url+'/'+val}"/>
                            </div>
                            <div class="col-md-10 text-center pt-1">
                                <span>${rdata.download_title[key]}</span>
                            </div>
                        </div>
                    </div>
                `;
            })
            download_data = download_data+` </div></a>`;

            $('#support_details_append').empty().append(`
                    <h4>${data.offer_title?'What We Offer ?':''}</h4>
                    <h5 class="text-center">${data.offer_title?data.offer_title:''}</h5>
                    ${data.offer_description?data.offer_description:''}</br>

                    <h4>${data.success_story?'Success Stories':''}</h4>
                    <h5 class="text-center">${data.success_story?data.success_story:''}</h5>
                    ${data.success_description?data.success_description:''}</br>

                    <h4>${data.success_story?'Security Practices':''}</h4>
                    <h5 class="text-center">${data.security_practices_title?data.security_practices_title:''}</h5>
                    ${data.security_practices_description?data.security_practices_description:''}</br>

                    <h4>${data.download_title?'Downloads':''}</h4>
                    ${download_data}

                    <h4>${data.improved_services_title?'Improdev Services':''}</h4>
                    <h5 class="text-center">${data.improved_services_title?data.improved_services_title:''}</h5>
                    ${data.improved_services_description?data.improved_services_description:''}</br>

                    <h4>${data.digital_management_title?'Digital Management':''}</h4>
                    <h5 class="text-center">${data.digital_management_title?data.digital_management_title:''}</h5>
                    ${data.digital_management_description?data.digital_management_description:''}</br>

                    <h4>${data.overview_title?'Overview':''}</h4>
                    <h5 class="text-center">${data.overview_title?data.overview_title:''}</h5>
                    ${data.overview_description?data.overview_description:''}</br>

                    <h4>${data.warehouse_title?'Warehouses':''}</h4>
                    <h5 class="text-center">${data.warehouse_title?data.warehouse_title:''}</h5>
                    ${data.warehouse_description?data.warehouse_description:''}</br>
                `);
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
})
