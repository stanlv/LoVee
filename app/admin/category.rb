ActiveAdmin.register Category do

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

  permit_params :name, :picture, :coins

  # Customizing the index form for Category
  #
   index do
    selectable_column
    column :id
    column :name
    column :picture
    column :coins
    column :created_at
    column :updated_at
    actions
  end
end
