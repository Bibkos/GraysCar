class OrganizationsController < ApplicationController
  # Отображение страници оргов
  def index
    @org = Organization.all
  end
  # --------------------------------------------

  # Отображение формы
  def new
    @org = Organization.new
  end
  # Функция создание обьекта из формы
  def create
    @org = Organization.new org_params
    if @org.save
      redirect_to organizations_path
    else
      render :new
    end
  end
  # ---------------------------------------------

  # Отображение редактирования
  def edit
    @org = Organization.find_by id: params[:id]
  end
  # Функция редактирования обьекта по id
  def update
    @org = Organization.find_by id: params[:id]
    if @org.update org_params
      redirect_to organizations_path
    else
      render :new
    end
  end
  # ---------------------------------------------

  # Функция удаления обьекта по id
  def destroy
    @org = Organization.find_by id: params[:id]
    @org.destroy
    redirect_to organizations_path
  end
  # ---------------------------------------------

  # Отображение одного обьекта
  def show
    @org = Organization.find_by id: params[:id]
  end
  # ---------------------------------------------
  private

  # Параметри из запроса форми
  def org_params
    params.require(:organization).permit(:name, :taxpayer_identification_number)
  end
end
