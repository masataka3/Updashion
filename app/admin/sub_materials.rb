ActiveAdmin.register SubMaterial do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :body, :image
    form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :image, :as => :file
    end
    f.actions
  end
    show do |sub_material|
      attributes_table do
        row :title
        row :body
        row :image do
          image_tag(sub_material.image.url)
        end
      end
    end
  #
  # or
  #
   # permit_params do
   #   permitted = [:title, :body, :image_id]
   #   permitted << :other if params[:action] == 'create' && current_user.admin?
   #   permitted
   # end
end
