class HomeController < ApplicationController
  def index
     @contacts = Contact.all
    # @mainTitle = "Welcome in Inspinia Rails Seed Project"
    # @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def augmentationPlt
    @contacts = Contact.all
  end

  def engineerPlt
    @contacts = Contact.all
  end

  def maintenancePlt
    @contacts = Contact.all
  end

  def supportPlt
    @contacts = Contact.all
  end

  def minor
  end
end
