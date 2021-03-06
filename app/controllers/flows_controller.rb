class FlowsController < ApplicationController

  # GET /flows
  # GET /flows.json
  def index
    @categories = Category.all
    @company = Company.all

    if(params[:category_id].blank?)
      @flows = Flow.order("created_at DESC").page(params[:page]).per(18)
      @categ_id = params[:category_id]

    else
      @flows = Category.find(params[:category_id]).flows.order("created_at DESC").page(params[:page]).per(18)
      @categ_id = params[:category_id]
      @categ_name = Category.find_by(id: params[:category_id]).name
    end

    @url = request.referer

    respond_to do |format|
      format.js 
      format.html
    end
  end

  # GET /flows/1
  # GET /flows/1.json
  def show
    @flow = Flow.friendly.find(params[:id]) 
    @js_id = 0
    @go_to_id = 0
    @nav_link_id = 49
    @cat_id_show = params[:q]

    respond_to do |format|
      format.js 
      format.html
    end

  end

  # GET /flows/new
=begin
  def new
    @company = Company.new
    @category = Category.new
    @flow = Flow.new(company_id: params[:company_id], category_id: params[:category_id])
  end

  # GET /flows/1/edit
  def edit
    @flow = Flow.friendly.find(params[:id]) 
  end

  # POST /flows
  # POST /flows.json
  def create
    @flow = Flow.new(flow_params)

    respond_to do |format|
      if @flow.save
        format.html { redirect_to @flow, notice: 'Flow was successfully created.' }
        format.json { render :show, status: :created, location: @flow }
      else
        format.html { render :new }
        format.json { render json: @flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flows/1
  # PATCH/PUT /flows/1.json
  def update
    @flow = Flow.friendly.find(params[:id]) 
    respond_to do |format|
      if @flow.update(flow_params)
        format.html { redirect_to @flow, notice: 'Flow was successfully updated.' }
        format.json { render :show, status: :ok, location: @flow }
      else
        format.html { render :edit }
        format.json { render json: @flow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flows/1
  # DELETE /flows/1.json
  def destroy
    @flow = Flow.friendly.find(params[:id]) 
    @flow.destroy
    respond_to do |format|
      format.html { redirect_to flows_url, notice: 'Flow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
=end



  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def flow_params
      params.fetch(:flow, {})
    end
end
