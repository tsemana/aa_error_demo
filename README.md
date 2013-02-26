Demo app showing belongs_to behavior on activeadmin's register page

PointTable belongs_to :project
Project has_one :point_table

When the above relationship is setup in the `ActiveAdmin.register` page, calling the association helper
routes (i.e. `new_project_point_table_path(project)`) gives the error 

`undefined method 'point_tables' for #<Project:00x000>`

On the other hand, the routes and associations behave correctly for this pairing:

JobFactor belongs_to :point_table
PointTable has_many :job_factors

To see this working, Remove the `belongs_to :project` line form the PointTable ActiveAdmin page. Create a Project
and associated PointTable in the console, then navigate to the PointTable page on the site. Clicking the 
`Add Job Factor` button calls `new_point_table_job_factor(point_table)` and it works as expected

It seems the difference is between the `has_many` vs `has_one` associations, but changing the Project relationship
`has_many` still doesn't fix it.
