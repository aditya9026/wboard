ActiveAdmin.register Blog do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :description, :published, :published_at, :category, :sub_category
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :published, :published_at, :category, :sub_category]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  active_admin_import  validate: false,
    csv_options: {col_sep: ";" },
    before_import: ->(importer){ p '=================' },
    batch_size: 1000
end
