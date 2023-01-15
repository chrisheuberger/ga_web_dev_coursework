class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    url = params[:url]
    doc = HTTParty.get(url)
    emails = doc.scan(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/)
    emails.each do |email|
      person = Person.find_or_create_by(email: email)
      site   = Site.find_or_create_by(url: url)
      person.sites << site
    end
    redirect_to people_path
    # redirect_to "/people"
  end
end