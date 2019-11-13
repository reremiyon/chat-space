json.(@message, :content, :image)
json.id @message.id
json.user_name @message.user.name
json.content @message.content
json.created_at @message.created_at.in_time_zone('Asia/Tokyo').strftime("%Y/%m/%d(%a) %H:%M")
json.image @message.image.url