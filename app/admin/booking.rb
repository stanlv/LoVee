ActiveAdmin.register Booking do

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

 permit_params :status, :user_id, :challenge_id

# Customizing the index form for booking
#
   index do
    selectable_column
    column :id
    column :challenge_id
    column :status
    column :user_id
    column :created_at
    column :updated_at
    actions
  end

end
