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


  def artwork_params
    params.require(:artwork).permit(:name, :image, :medium, :price, :avatar)
end
 
  
  form :partial => "layouts/form"  
end



 
  


