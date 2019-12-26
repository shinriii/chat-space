json.array! @users do |user|
  json.id user.id
  json.name user.name
  json.created_at message.created_at.strftime("%Y/%m/%d %H:%M")
end