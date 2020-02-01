$(window).on('load',function(){
  var path = location.pathname
  if(path == "/addresses"){
    var arr = [
      {cd:"北海道", label:"北海道"},
      {cd:"青森県", label:"青森県"},
      {cd:"岩手県", label:"岩手県"},
      {cd:"宮城県", label:"宮城県"},
      {cd:"秋田県", label:"秋田県"},
      {cd:"山形県", label:"山形県"},
      {cd:"福島県", label:"福島県"},
      {cd:"茨城県", label:"茨城県"},
      {cd:"栃木県", label:"栃木県"},
      {cd:"群馬県", label:"群馬県"},
      {cd:"埼玉県", label:"埼玉県"},
      {cd:"千葉県", label:"千葉県"},
      {cd:"東京都", label:"東京都"},
      {cd:"神奈川県", label:"神奈川県"},
      {cd:"新潟県", label:"新潟県"},
      {cd:"富山県", label:"富山県"},
      {cd:"石川県", label:"石川県"},
      {cd:"福井県", label:"福井県"},
      {cd:"山梨県", label:"山梨県"},
      {cd:"長野県", label:"長野県"},
      {cd:"岐阜県", label:"岐阜県"},
      {cd:"静岡県", label:"静岡県"},
      {cd:"愛知県", label:"愛知県"},
      {cd:"三重県", label:"三重県"},
      {cd:"滋賀県", label:"滋賀県"},
      {cd:"京都府", label:"京都府"},
      {cd:"大阪府", label:"大阪府"},
      {cd:"兵庫県", label:"兵庫県"},
      {cd:"奈良県", label:"奈良県"},
      {cd:"和歌山県", label:"和歌山県"},
      {cd:"鳥取県", label:"鳥取県"},
      {cd:"島根県", label:"島根県"},
      {cd:"岡山県", label:"岡山県"},
      {cd:"広島県", label:"広島県"},
      {cd:"山口県", label:"山口県"},
      {cd:"徳島県", label:"徳島県"},
      {cd:"香川県", label:"香川県"},
      {cd:"愛媛県", label:"愛媛県"},
      {cd:"高知県", label:"高知県"},
      {cd:"福岡県", label:"福岡県"},
      {cd:"佐賀県", label:"佐賀県"},
      {cd:"長崎県", label:"長崎県"},
      {cd:"熊本県", label:"熊本県"},
      {cd:"大分県", label:"大分県"},
      {cd:"宮崎県", label:"宮崎県"},
      {cd:"鹿児島県", label:"鹿児島県"},
      {cd:"沖縄県", label:"沖縄県"}
    ];

    for (var i = 0; i < arr.length; i++) {
      $("<option>", {
        value: arr[i].cd,
        text: arr[i].label
      }).appendTo('#selPref');
    };
  };
});