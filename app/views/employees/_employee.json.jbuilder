json.extract! employee, :id, :first_name, :last_name, :phone, :email, :birthday, :country, :active, :created_at, :updated_at
json.url employee_url(employee, format: :json)
