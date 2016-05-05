class AugmentaionContactsController < ApplicationController
  before_action :set_augmentaion_contact, only: [:show, :edit, :update, :destroy]

  # GET /augmentaion_contacts
  # GET /augmentaion_contacts.json
  def index
    @augmentaion_contacts = AugmentaionContact.all
  end

  # GET /augmentaion_contacts/1
  # GET /augmentaion_contacts/1.json
  def show
  end

  # GET /augmentaion_contacts/new
  def new
    @augmentaion_contact = AugmentaionContact.new
  end

  # GET /augmentaion_contacts/1/edit
  def edit
  end

  # POST /augmentaion_contacts
  # POST /augmentaion_contacts.json
  def create
    @augmentaion_contact = AugmentaionContact.new(augmentaion_contact_params)

    respond_to do |format|
      if @augmentaion_contact.save
        format.html { redirect_to @augmentaion_contact, notice: 'Augmentaion contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @augmentaion_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @augmentaion_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /augmentaion_contacts/1
  # PATCH/PUT /augmentaion_contacts/1.json
  def update
    respond_to do |format|
      if @augmentaion_contact.update(augmentaion_contact_params)
        format.html { redirect_to @augmentaion_contact, notice: 'Augmentaion contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @augmentaion_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /augmentaion_contacts/1
  # DELETE /augmentaion_contacts/1.json
  def destroy
    @augmentaion_contact.destroy
    respond_to do |format|
      format.html { redirect_to augmentaion_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_augmentaion_contact
      @augmentaion_contact = AugmentaionContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def augmentaion_contact_params
      params.require(:augmentaion_contact).permit(:position, :last_name, :first_name, :rank, :phone)
    end
end
