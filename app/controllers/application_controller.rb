class ApplicationController < ActionController::Base
  protect_from_forgery
  #模板中的只能在视图中显示，如果在这里添加了include的话，也可以在控制层中显示
  include SessionsHelper
end
