ActiveAdmin.register User do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

 permit_params :email, :first_name, :last_name, :admin

# Customizing the index form for user
#
   index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :created_at
    column :sign_in_count
    column :admin
    actions
  end

# Customized the user edit form
  # form do |f|
  #   f.inputs "Identity" do
  #     f.input :name
  #     f.input :email
  #   end
  #   f.inputs "Admin" do
  #     f.input :admin
  #   end
  #   f.actions
  # end




end
