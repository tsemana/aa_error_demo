ActiveAdmin.register Project do
  show do
    attributes_table_for project do
      row :name
    end
  end

  sidebar :point_table, only: :show do
    unless project.point_table.nil?
      attributes_table_for project.point_table do
        row :name
      end
    end
    span link_to("New PT", new_project_point_table_path(project), class: :button)
  end
end
