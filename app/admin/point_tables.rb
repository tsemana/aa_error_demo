ActiveAdmin.register PointTable do
  belongs_to :project

  show do
    panel "Job Factors" do
      if point_table.job_factors.empty?
        div do
          span "There are no Job Factors"
          br
          br
        end
      else
        table_for(point_table.job_factors) do
          column :name
          column :code
        end
      end
      tr :class => "action_items" do
        td link_to("New Job Factor", new_point_table_job_factor_path(point_table), 
                   :class => :button)
      end
    end
  end
end
