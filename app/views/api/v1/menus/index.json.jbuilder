# index.json.jbuilder
# app/views/api/v1/menus/index.json.jbuilder
json.array! @menus do |menu|
  json.extract! menu, :id, :name, :menu_categories
end
