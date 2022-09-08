class ChlidrensController < ApplicationController
  before_action :set_chlidren, only: %i[ show edit update destroy result_delete bulk_result_delete ]

  # GET /chlidrens or /chlidrens.json
  def index
    @chlidrens = Chlidren.all
  end

  # GET /chlidrens/1 or /chlidrens/1.json
  def show
    @results = @chlidren.results
  end

  # GET /chlidrens/new
  def new
    @chlidren = Chlidren.new
  end

  # GET /chlidrens/1/edit
  def edit
  end

  # POST /chlidrens or /chlidrens.json
  def create
    @chlidren = Chlidren.new(chlidren_params)

    respond_to do |format|
      if @chlidren.save
        format.html { redirect_to chlidren_url(@chlidren), notice: "Chlidren was successfully created." }
        format.json { render :show, status: :created, location: @chlidren }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chlidren.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chlidrens/1 or /chlidrens/1.json
  def update
    respond_to do |format|
      if @chlidren.update(chlidren_params)
        format.html { redirect_to chlidren_url(@chlidren), notice: "Chlidren was successfully updated." }
        format.json { render :show, status: :ok, location: @chlidren }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chlidren.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chlidrens/1 or /chlidrens/1.json
  def destroy
    @chlidren.destroy

    respond_to do |format|
      format.html { redirect_to chlidrens_url, notice: "Chlidren was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def bulk_delete
    params[:chlidren_id].uniq.each {|x| Chlidren.find(x).destroy if x.present?}
    redirect_to '/chlidrens'
  end

  def result_delete
    @result = @chlidren.results.find(params[:result_id])
    @result.destroy
    redirect_to "/chlidrens/#{params[:id]}"
  end

   def bulk_result_delete
    if params[:result_id]
    params[:result_id].uniq.each {|x| @chlidren.results.find(x).destroy if x.present? }
  end
    redirect_to chlidren_path(@chlidren)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chlidren
      @chlidren = Chlidren.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chlidren_params
      params.require(:chlidren).permit(:name, :child_class, :child_roll_no, :user_id , results_attributes: [:id, :subject, :score, :_destroy])
    end
end
