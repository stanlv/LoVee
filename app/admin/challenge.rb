ActiveAdmin.register Challenge do

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

  permit_params :title, :description, :deadline, :category_id, :gender

# Active Admin CSV Import gem config
#
# csv_importable :columns => [:category_id, :title, :description, :deadline, :gender]


# Customizing the index form for challenge
#
   index do
    selectable_column
    column :id
    column :title
    column :description
    column :deadline
    column :category_id
    column :created_at
    column :updated_at
    actions
  end

end
