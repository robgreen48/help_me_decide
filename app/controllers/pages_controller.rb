class PagesController < ApplicationController
  def home
  	@parties = Party.all
  	@policies = Policy.all
  	@issues = Policy.uniq.pluck(:issue_area)
  end
end
