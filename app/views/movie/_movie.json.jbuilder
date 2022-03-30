json.extract! moive, :id, :title,:procuction_year,:running_time,:rating,:status :content, :created_at, :updated_at
json.url moive_url(moive, format: :json)