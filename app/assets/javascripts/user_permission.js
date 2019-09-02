$( document ).on('turbolinks:load', function() {
  $('select').select2();
  $("[data-form-prepend]").click(function(e){
    var obj = $($(this).attr("data-form-prepend"));
    obj.find("input, select, textarea").each(function() {
      $(this).attr("name", function() {
        return $(this)
          .attr("name")
          .replace("new_record", new Date().getTime());
      });
    });
    $('table tbody').append(obj)
    // obj.insertBefore(this);
    return false;
  });

  $(document).on('change', 'select.site-select', (event) => {
    var site_id = $(event.target).val();
    $.ajax(`/users/${site_id}/tabs`, {
      method: 'get',
      success: (data) => {
        var tab_select =  $(event.target).parent().next('td').find('.tab-select')[0];
        console.log(tab_select)
        tab_select.innerHTML = '<option>All Tabs</option>';
        $.each(data.tabs, (i, tab) => {
          console.log(tab)
          var option = $("<option></option>")
          option.val(tab[1]);
          option.text(tab[0]);
          console.log(option)
          $(tab_select).append(option);
        })
      }
    })
  });
});