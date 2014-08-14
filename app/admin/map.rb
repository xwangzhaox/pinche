ActiveAdmin.register Map do

  permit_params :expense, :starting_point, :end_point, :first_point, :last_point, :description, :created_at
 
    index do
      column :expense
      column :starting_point
      column :end_point
      column :description
      column :created_at
      actions
    end
 
    form :partial => "form"
end
