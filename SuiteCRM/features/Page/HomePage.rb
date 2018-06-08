class HomePage < SitePrism::Page
  section :bar, BarSection, 'nav div.container-fluid'

  def create_task_area
    bar.menu_create.create_link.hover
    bar.menu_create.create_task_link.click
  end
  def task_area
    bar.menu_activities.activities_link.hover
    bar.menu_activities.task_link.click
  end

end
