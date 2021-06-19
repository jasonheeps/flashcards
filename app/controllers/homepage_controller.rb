class HomepageController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    skip_authorization
  end
end
