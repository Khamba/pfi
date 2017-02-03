$(document).ready(function() {
  $("#doctor_search_state.selectpicker").on("changed.bs.select", function(e, clickedIndex, newValue, oldValue) {
    var state = $(this).val();
    $.post('/search/cities_by_state', {
      state: state
    }, function(data){
      var city_select = $("#doctor_search_city.selectpicker");
      console.log(data);
      city_select.empty();
        for (var i = 0; i < data.length; i++) {
          city_select.append("<option value=" + data[i] + ">" + data[i] + "</option>");
        }
      city_select.attr("disabled", false);
      city_select.selectpicker('refresh');
    });
  })
});
