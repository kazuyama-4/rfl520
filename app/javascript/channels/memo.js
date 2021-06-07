$(function() {
  function buildHTML(shop) {
    var html = $('<li class="food-detail">').append(shop.stuff);
    return html;
  }
  $('.js-form').on('submit', function(e) {
    e.preventDefault(); 
    var textField = $('.js-form__text-field');
    var shop = textField.val();
    $.ajax({
      type: 'POST',
      url: '/shops',
      data: {
        shop: {
          shop: stuff
        }
      },
      dataType: 'json'
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.shops').append(html);
　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　//todosクラスに引数で指定したdataのHTML要素を追加。

      textField.val('');
    })
    .fail(function() {
      alert('error');
    });
  });
});
