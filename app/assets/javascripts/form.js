function process(){
  var result = '';

  result
  += '姓：' + document.fm.elements.user_lastname.value + '\n'


  // for (var i = 0; i < 5 ; i++){
  //   result[i]
  //   += user_detail[i]
  //   + '：'
  // }
  result += '\nで変更します'
  window.alert(result);
  return false;
}


// document.fm.elements.user_lastname.value
// document.fm.elements.user_firstname.value
// document.fm.elements.user_postalcode.value




// 姓：灘
// 名：梨菜
// 郵便番号：000-0000
// 住所：とやま
// 以上で変更します
