ActiveAdmin.register Textile do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :image, :body, :title
   form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :image, :as => :file
    end
    f.actions
  end
    show do |textile|
      attributes_table do
        row :title
        row :body
        row :image do
          image_tag(textile.image.url)
        end
      end
    end
  #
  # or
  #
  # permit_params do
     # permitted = [:image_id, :body, :title]
     # permitted << :other if params[:action] == 'create' && current_user.admin?
     # permitted
 # end

end
