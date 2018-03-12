class DowntimeInstancesController < OpenReadController
  before_action :set_downtime_instance, only: [:show, :update, :destroy]

  # GET /downtime_instances
  def index
    @downtime_instances = current_user.downtime_instances.all

    render json: @downtime_instances
  end

  # GET /downtime_instances/1
  def show
    render json: @downtime_instance
  end

  # POST /downtime_instances
  def create
    @downtime_instance = current_user.downtime_instances.build(downtime_instance_params)

    if @downtime_instance.save
      render json: @downtime_instance, status: :created, location: @downtime_instance
    else
      render json: @downtime_instance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /downtime_instances/1
  def update
    if @downtime_instance.update(downtime_instance_params)
      render json: @downtime_instance
    else
      render json: @downtime_instance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /downtime_instances/1
  def destroy
    @downtime_instance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_downtime_instance
      @downtime_instance = current_user.downtime_instances.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def downtime_instance_params
      params.require(:downtime_instance, :date, :time, :activity).permit(:user_id)
    end
end
