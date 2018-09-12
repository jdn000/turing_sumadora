class MaquinasController < ApplicationController
  before_action :set_maquina, only: [:show, :edit, :update, :destroy]

  # GET /maquinas
  # GET /maquinas.json
  def index
    @maquinas = Maquina.all
  end
def hall
end

  # GET /maquinas/1
  # GET /maquinas/1.json
  def show

    @number= Array.new 
    @aguja=Array.new
    cuentas=String.new
    @a=0
    @estado=0
    @ct=0
    @maquina.entrada="I"*@maquina.valor+'#'+"I"*@maquina.valor1
    30.times do
    @number.push("#")
    @aguja.push("_")
    end
    @maquina.entrada.each_char{|f| @number.push(f)}
    @maquina.entrada.each_char{|f| @aguja.push("_")}    
    30.times do
    @number.push("#")
    @aguja.push("_")
    end
  end

  # GET /maquinas/new
  def new
    @maquina = Maquina.new
  end
  # GET /maquinas/1/edit
  def edit
  end
  # POST /maquinas
  # POST /maquinas.json
  def create
    @maquina = Maquina.new(maquina_params)
      if @maquina.save
      redirect_to @maquina
    else
      render 'new'
    end
  end
  # PATCH/PUT /maquinas/1
  # PATCH/PUT /maquinas/1.json
  def update
    respond_to do |format|
      if @maquina.update(maquina_params)
        format.html { redirect_to @maquina, notice: 'Maquina was successfully updated.' }
        format.json { render :show, status: :ok, location: @maquina }
      else
        format.html { render :edit }
        format.json { render json: @maquina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinas/1
  # DELETE /maquinas/1.json
  def destroy
    @maquina.destroy
    respond_to do |format|
      format.html { redirect_to maquinas_url, notice: 'Maquina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maquina
      @maquina = Maquina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maquina_params
      params.require(:maquina).permit(:valor,:entrada,:valor1)
    end

end
