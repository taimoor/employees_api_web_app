json.extract! employee, :id, :name, :salary, :gender, :desgination, :code, :created_at, :updated_at
json.url employee_url(employee, format: :json)
