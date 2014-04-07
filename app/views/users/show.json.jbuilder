json.extract! @user, :id, :utype, :name, :email, :dob, :community, :nationality, :address, :number, :created_at, :updated_at

json.branch @user.branch, :name
