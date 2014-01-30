class ConteudosController < ApplicationController
  # GET /conteudos
  # GET /conteudos.json
  def index
    @conteudos = Conteudo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conteudos }
    end
  end

  # GET /conteudos/1
  # GET /conteudos/1.json
  def show
    @conteudo = Conteudo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conteudo }
    end
  end

  # GET /conteudos/new
  # GET /conteudos/new.json
  def new
    @conteudo = Conteudo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conteudo }
    end
  end

  # GET /conteudos/1/edit
  def edit
    @conteudo = Conteudo.find(params[:id])
  end

  # POST /conteudos
  # POST /conteudos.json
  def create
    @conteudo = Conteudo.new(params[:conteudo])

    respond_to do |format|
      if @conteudo.save
        format.html { redirect_to @conteudo, notice: 'Conteudo was successfully created.' }
        format.json { render json: @conteudo, status: :created, location: @conteudo }
      else
        format.html { render action: "new" }
        format.json { render json: @conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conteudos/1
  # PUT /conteudos/1.json
  def update
    @conteudo = Conteudo.find(params[:id])

    respond_to do |format|
      if @conteudo.update_attributes(params[:conteudo])
        format.html { redirect_to @conteudo, notice: 'Conteudo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conteudo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conteudos/1
  # DELETE /conteudos/1.json
  def destroy
    @conteudo = Conteudo.find(params[:id])
    @conteudo.destroy

    respond_to do |format|
      format.html { redirect_to conteudos_url }
      format.json { head :no_content }
    end
  end

  #def conteudo_params
    #params.require(:conteudo).permit(:ativo, :data_publicacao, :descricao, :foto, :resumo, :tipo, :titulo)
  #end

end
