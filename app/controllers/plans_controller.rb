class PlansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    if params[:query].present?
      #query_sql = "name @@ :query OR description @@ :query OR location @@ :query"
      #@plans = Plan.where(query_sql, query: "%#{params[:query]}%")
      @plans = Plan.search_by_name_and_description_and_location(params[:query])
    else
    @plans = Plan.all
    end
  end

  def show
    set_plan
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id
    if @plan.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_plan
  end

  def update
    set_plan
    if @plan.update(plan_params)
      redirect_to plan_path(@plan)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_plan
    @plan.destroy
    redirect_to plans_path, status: :see_other
  end

  private

  def set_plan
    @plan = Plan.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:name, :description, :location, :category, :intensity, :starting_time, :finish_time, :photo)
  end
end
