ActiveAdmin.register Shop do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body, :image, :address, :latitude, :longitude
  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :image, :as => :file
      f.input :address
    end
    f.actions
  end

  show do |shop|
    attributes_table do
      row :title
      row :body
      row :latitude
      row :longitude
      row :image do
        image_tag(shop.image.url)
      end
    end
  end
  #
  # or
  #
   # permit_params do
     # permitted = [:title, :body, :image_id]
     # permitted << :other if params[:action] == 'create' && current_user.admin?
     # permitted
   # end

end
