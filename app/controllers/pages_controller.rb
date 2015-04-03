class PagesController < ApplicationController
  def home
  	@parties = Party.all
  	@policies = Policy.all
  	@issues = Policy.uniq.pluck(:issue_area)
  end

  def results
  	@policies = Policy.all
  	@issue = params[:issue]

  	@id1 = params[:party_id1].to_i
  	@policies1 = @policies.select { |policy| policy.party_id == @id1 && policy.issue_area == @issue }
  	@party1 = Party.find_by_id(@id1)

  	@id2 = params[:party_id2].to_i
  	@policies2 = @policies.select { |policy| policy.party_id == @id2 && policy.issue_area == @issue }
  	@party2 = Party.find_by_id(@id2)

  end
end
