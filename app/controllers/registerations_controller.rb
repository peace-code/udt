class RegisterationsController < ApplicationController
  http_basic_authenticate_with :name => "dhh", :password => "secret", :only => :index

  # GET /registerations
  # GET /registerations.json
  def index
    @registerations = Registeration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registerations }
    end
  end

  # GET /registerations/1
  # GET /registerations/1.json
  def show
    @registeration = Registeration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registeration }
    end
  end

  # GET /registerations/new
  # GET /registerations/new.json
  def new
    @registeration = Registeration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registeration }
    end
  end

  # GET /registerations/1/edit
  def edit
    @registeration = Registeration.find(params[:id])
  end

  # POST /registerations
  # POST /registerations.json
  def create
    @registeration = Registeration.new(params[:registeration])

    if @registeration.save
      redirect_to @registeration
    else
      render action: "new"
    end
  end

  # PUT /registerations/1
  # PUT /registerations/1.json
  def update
    @registeration = Registeration.find(params[:id])

    respond_to do |format|
      if @registeration.update_attributes(params[:registeration])
        format.html { redirect_to @registeration, notice: 'Registeration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registeration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registerations/1
  # DELETE /registerations/1.json
  def destroy
    @registeration = Registeration.find(params[:id])
    @registeration.destroy

    respond_to do |format|
      format.html { redirect_to registerations_url }
      format.json { head :no_content }
    end
  end
end
