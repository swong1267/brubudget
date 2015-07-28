class ExpendituresController < ApplicationController
  before_action :check_user, only: [:edit, :update]

  def index
    @expenditures = Expenditure.all.order(purchase_date: :desc)
    # @expenditures = current_user.expenditures
  end

  def show
    @expenditure = Expenditure.find(params[:id])
  end

  def new
    @expenditure = Expenditure.new
  end

  def edit
    @expenditure = Expenditure.find(params[:id])
    # if current_user != @expenditure.user
    #   redirect_to expenditures_path
    # end
  end

  def create
    @expenditure = Expenditure.new(expenditure_params)
    @expenditure.user = current_user
    if @expenditure.save
      redirect_to expenditure_path(@expenditure)
    else
      redirect_to new_expenditure_path
    end
  end

  def update
    @expenditure = Expenditure.find(params[:id])
    if @expenditure.update(expenditure_params)
      redirect_to @expenditure
    else
      render 'edit'
    end
  end

  def destroy
    @expenditure = Expenditure.find(params[:id])
    @expenditure.destroy
    redirect_to expenditures_path
  end

  private
    #before action method
    def check_user
      unless current_user == Expenditure.find(params[:id]).user
        flash[:error] = "Insufficient permissions"
        redirect_to expenditures_path # halts request cycle
      end
    end

    def expenditure_params
      params.require(:expenditure).permit(:name, :price, :quantity, :purchase_date)
    end
end
