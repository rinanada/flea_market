function process(){
  var result = '';
  var user_detail = ['姓', '名','郵便番号','住所',];

  for (var i = 0; i < 4 ; i++){
    result
    += user_detail[i]
    + '：'
    + document.fm.elements[i].value
    + '\n';
  }
  result += '\nで変更します'
  window.alert(result);
  return false;
}


// 姓：灘
// 名：梨菜
// 郵便番号：000-0000
// 住所：とやま
// 以上で変更します
