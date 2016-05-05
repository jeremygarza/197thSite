class EngineerContactsController < ApplicationController
  before_action :set_engineer_contact, only: [:show, :edit, :update, :destroy]

  # GET /engineer_contacts
  # GET /engineer_contacts.json
  def index
    @engineer_contacts = EngineerContact.all
  end

  # GET /engineer_contacts/1
  # GET /engineer_contacts/1.json
  def show
  end

  # GET /engineer_contacts/new
  def new
    @engineer_contact = EngineerContact.new
  end

  # GET /engineer_contacts/1/edit
  def edit
  end

  # POST /engineer_contacts
  # POST /engineer_contacts.json
  def create
    @engineer_contact = EngineerContact.new(engineer_contact_params)

    respond_to do |format|
      if @engineer_contact.save
        format.html { redirect_to @engineer_contact, notice: 'Engineer contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @engineer_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @engineer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /engineer_contacts/1
  # PATCH/PUT /engineer_contacts/1.json
  def update
    respond_to do |format|
      if @engineer_contact.update(engineer_contact_params)
        format.html { redirect_to @engineer_contact, notice: 'Engineer contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @engineer_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /engineer_contacts/1
  # DELETE /engineer_contacts/1.json
  def destroy
    @engineer_contact.destroy
    respond_to do |format|
      format.html { redirect_to engineer_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_engineer_contact
      @engineer_contact = EngineerContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def engineer_contact_params
      params.require(:engineer_contact).permit(:position, :last_name, :first_name, :rank, :phone)
    end
end
