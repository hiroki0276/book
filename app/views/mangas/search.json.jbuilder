json.array! @mangas do |manga|
  json.id manga.id
  json.title manga.title
  json.author manga.author
  json.user_id manga.user_id
  json.volume manga.volume
  json.memo manga.memo
  json.user_sign_in current_user
end