class MaintenanceContactsController < ApplicationController
  before_action :set_maintenance_contact, only: [:show, :edit, :update, :destroy]

  # GET /maintenance_contacts
  # GET /maintenance_contacts.json
  def index
    @maintenance_contacts = MaintenanceContact.all
  end

  # GET /maintenance_contacts/1
  # GET /maintenance_contacts/1.json
  def show
  end

  # GET /maintenance_contacts/new
  def new
    @maintenance_contact = MaintenanceContact.new
  end

  # GET /maintenance_contacts/1/edit
  def edit
  end

  # POST /maintenance_contacts
  # POST /maintenance_contacts.json
  def create
    @maintenance_contact = MaintenanceContact.new(maintenance_contact_params)

    respond_to do |format|
      if @maintenance_contact.save
        format.html { redirect_to @maintenance_contact, notice: 'Maintenance contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @maintenance_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @maintenance_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maintenance_contacts/1
  # PATCH/PUT /maintenance_contacts/1.json
  def update
    respond_to do |format|
      if @maintenance_contact.update(maintenance_contact_params)
        format.html { redirect_to @maintenance_contact, notice: 'Maintenance contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @maintenance_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenance_contacts/1
  # DELETE /maintenance_contacts/1.json
  def destroy
    @maintenance_contact.destroy
    respond_to do |format|
      format.html { redirect_to maintenance_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance_contact
      @maintenance_contact = MaintenanceContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_contact_params
      params.require(:maintenance_contact).permit(:position, :last_name, :first_name, :rank, :phone)
    end
end
