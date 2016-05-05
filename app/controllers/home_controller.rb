class HomeController < ApplicationController
  def index
     @contacts = Contact.all
    # @mainTitle = "Welcome in Inspinia Rails Seed Project"
    # @mainDesc = "It is an application skeleton for a typical Ruby on Rails web app. You can use it to quickly bootstrap your webapp projects and dev/prod environment."
  end

  def augmentationPlt
    @augmentaion_contacts = AugmentaionContact.all
  end

  def engineerPlt
    @engineer_contacts = EngineerContact.all
 end

  def maintenancePlt
    @maintenance_contacts = MaintenanceContact.all
  end

  def supportPlt
    @support_contacts = SupportContact.all
  end

  def minor
  end
end
