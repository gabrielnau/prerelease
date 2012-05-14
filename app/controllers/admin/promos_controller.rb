class Admin::PromosController < ApplicationController
  # GET /admin/promos
  # GET /admin/promos.json
  def index
    @admin_promos = Admin::Promo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_promos }
    end
  end

  # GET /admin/promos/1
  # GET /admin/promos/1.json
  def show
    @admin_promo = Admin::Promo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_promo }
    end
  end

  # GET /admin/promos/new
  # GET /admin/promos/new.json
  def new
    @admin_promo = Admin::Promo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_promo }
    end
  end

  # GET /admin/promos/1/edit
  def edit
    @admin_promo = Admin::Promo.find(params[:id])
  end

  # POST /admin/promos
  # POST /admin/promos.json
  def create
    @admin_promo = Admin::Promo.new(params[:admin_promo])

    respond_to do |format|
      if @admin_promo.save
        format.html { redirect_to @admin_promo, notice: 'Promo was successfully created.' }
        format.json { render json: @admin_promo, status: :created, location: @admin_promo }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/promos/1
  # PUT /admin/promos/1.json
  def update
    @admin_promo = Admin::Promo.find(params[:id])

    respond_to do |format|
      if @admin_promo.update_attributes(params[:admin_promo])
        format.html { redirect_to @admin_promo, notice: 'Promo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_promo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/promos/1
  # DELETE /admin/promos/1.json
  def destroy
    @admin_promo = Admin::Promo.find(params[:id])
    @admin_promo.destroy

    respond_to do |format|
      format.html { redirect_to admin_promos_url }
      format.json { head :no_content }
    end
  end
end
