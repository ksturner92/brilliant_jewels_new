ActiveAdmin.register Artwork do 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  permit_params :name, :descr, :medium, :price, :avatar

 
  
  form :partial => "layouts/form"  

  show do |artwork|
    attributes_table do
      row :name
      row :descr
      row :medium
      row :price
      row :avatar do
        image_tag(artwork.avatar.url, height: '300')
      end
    end
  end

  filter :name
  filter :medium
  filter :created_at
  filter :price
  filter :descr
end  

 
  


