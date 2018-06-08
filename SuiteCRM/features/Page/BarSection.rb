class MenuCreateSection < SitePrism::Section
  element :create_link, 'li#quickcreatetop'
  element :create_task_link, 'li.last'
end

class MenuActivitiesSection < SitePrism::Section
  element :activities_link, 'a#grouptab_3'
  element :task_link, 'a#moduleTab_6_Tasks'
end

class BarSection < SitePrism::Section
  section :menu_create, MenuCreateSection, 'div.desktop-bar'
  section :menu_activities, MenuActivitiesSection, 'div#toolbar'
end
