class CompaniesController < ApplicationController
  def new
      @company = current_user.build_company
  end

  def edit
    @company = current_user.company

  end

  def creat
    @company = current_user.build_company(company_params)
    if @company.save
      flash[:notice]= 'Empresa cadastrada com sucesso'
      redirect_to root_path
    else
      flash[:notice]= 'nao foi possivel cadastrar a empresa'
      redirect_to root_path
    end

  end

  def update
    @company = current_user.company
    if @company.update(company_params)
      flash[:notice]= 'Empresa cadastrada com sucesso'
      redirect_to root_path
    else
      render :edit
    end

  end

  private
  def company_params
    params.require(:company).permit(:name, :url)
  end
end
