class FlowsController < ApplicationController

  # GET /flows
  # GET /flows.json
  def index
    @companies = Company.all
    @categories = Category.all
    @flows = Flow.all
  end

   def from_category
    @categories = Category.all
    @flows = Category.find(params[:category_id]).flows
    respond_to do |format|
        format.js
    end
  end 

  def show_all
    @categories = Category.all
    @flows = Flow.all
    respond_to do |format|
      format.js
    end
  end


  # GET /flows/1
  # GET /flows/1.json
  def show
    @flow = Flow.friendly.find(params[:id]) 
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
