class SupportContactsController < ApplicationController
  before_action :set_support_contact, only: [:show, :edit, :update, :destroy]

  # GET /support_contacts
  # GET /support_contacts.json
  def index
    @support_contacts = SupportContact.all
  end

  # GET /support_contacts/1
  # GET /support_contacts/1.json
  def show
  end

  # GET /support_contacts/new
  def new
    @support_contact = SupportContact.new
  end

  # GET /support_contacts/1/edit
  def edit
  end

  # POST /support_contacts
  # POST /support_contacts.json
  def create
    @support_contact = SupportContact.new(support_contact_params)

    respond_to do |format|
      if @support_contact.save
        format.html { redirect_to @support_contact, notice: 'Support contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @support_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @support_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_contacts/1
  # PATCH/PUT /support_contacts/1.json
  def update
    respond_to do |format|
      if @support_contact.update(support_contact_params)
        format.html { redirect_to @support_contact, notice: 'Support contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @support_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_contacts/1
  # DELETE /support_contacts/1.json
  def destroy
    @support_contact.destroy
    respond_to do |format|
      format.html { redirect_to support_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_contact
      @support_contact = SupportContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_contact_params
      params.require(:support_contact).permit(:position, :last_name, :first_name, :rank, :phone)
    end
end
