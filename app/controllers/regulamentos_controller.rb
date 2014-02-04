class RegulamentosController < ApplicationController
  # GET /regulamentos
  # GET /regulamentos.json
  def index
    @regulamentos = Regulamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regulamentos }
    end
  end

  # GET /regulamentos/1
  # GET /regulamentos/1.json
  def show
    @regulamento = Regulamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regulamento }
    end
  end

  # GET /regulamentos/new
  # GET /regulamentos/new.json
  def new
    @regulamento = Regulamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regulamento }
    end
  end

  # GET /regulamentos/1/edit
  def edit
    @regulamento = Regulamento.find(params[:id])
  end

  # POST /regulamentos
  # POST /regulamentos.json
  def create
    @regulamento = Regulamento.new(params[:regulamento])

    respond_to do |format|
      if @regulamento.save
        format.html { redirect_to @regulamento, notice: 'Regulamento was successfully created.' }
        format.json { render json: @regulamento, status: :created, location: @regulamento }
      else
        format.html { render action: "new" }
        format.json { render json: @regulamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regulamentos/1
  # PUT /regulamentos/1.json
  def update
    @regulamento = Regulamento.find(params[:id])

    respond_to do |format|
      if @regulamento.update_attributes(params[:regulamento])
        format.html { redirect_to @regulamento, notice: 'Regulamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regulamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regulamentos/1
  # DELETE /regulamentos/1.json
  def destroy
    @regulamento = Regulamento.find(params[:id])
    @regulamento.destroy

    respond_to do |format|
      format.html { redirect_to regulamentos_url }
      format.json { head :no_content }
    end
  end
end
