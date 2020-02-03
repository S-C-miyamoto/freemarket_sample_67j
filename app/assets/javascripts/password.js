$(document).on('turbolinks:load',function () {
  $(function () {
    $('#passcheck').change(function () {
      if ($(this).prop('checked')) {
        $('#password').attr('type', 'text');
      } else {
        $('#password').attr('type', 'password');
      }
    });
  });
});