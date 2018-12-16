ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
form do |f|
  f.actions
	f.inputs 'Products' do
	    f.input :categorie_id, :as => :select, :collection => Categorie.all.map{|c| ["#{c.name}", c.id]}
	    f.input :name
	    f.input :description
	    f.input :price
	    f.input :pcount
	    f.input :images, as: :file, input_html: { multiple: true } 
	end
  f.actions
end

 permit_params :name, :description, { images: [] }, :categorie_id, :price, :pcount
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end



end
