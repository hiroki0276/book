// $(function() {

//   let search_list = $(".manga");

//   function appendManga(manga) {
//     if(manga.user_sign_in && manga.user_sign_in.id == manga.user_id){
//       let html =  `<div class="manga">
//                     <div class="input">
//                     <a href="/mangas/${manga.id}/edit">編集</a>
//                     <a data-confirm="【確認】マンガを削除してもよろしいですか？" rel="nofollow" data-method="delete" href="/mangas/${manga.id}">削除</a>
//                     </div>
//                     <div class="test">タイトル/作者/巻数</div>
//                     ${manga.title}
//                     ${manga.author}
//                     ${manga.volume}
//                     ${manga.user_id}
//                     <div class="memo"></div>
//                     </div>`
//     }
//     end





//   $(".search-input").on("keyup", function() {
//     let input = $(".search-input").val();
//     $.ajax({
//       type: 'GET',
//       url: '/mangas/search',
//       data: { keyword: input },
//       dataType: 'json'
//     })
//     .done(function(mangas) {
//       $(".manga").empty();
//       if (mangas.length !== 0) {
//         mangas.forEach(function(manga){
//           appendManga(manga);
//         });
//       }
//       else {
//         appendErrMsgToHTML("一致するマンガがありません");
//       }
//     })
//   });
// });