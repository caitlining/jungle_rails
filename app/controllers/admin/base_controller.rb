class Admin::BaseController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME_KEY'], password: ENV['ADMIN_PASSWORD_KEY']

end
