class ListPermissionsController < ApplicationController
  before_action :set_list_permission, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @list_permissions = ListPermission.all
    respond_with(@list_permissions)
  end

  def show
    respond_with(@list_permission)
  end

  def new
    @list_permission = ListPermission.new
    respond_with(@list_permission)
  end

  def edit
  end

  def create
    @list_permission = ListPermission.new(list_permission_params)
    @list_permission.save
    respond_with(@list_permission)
  end

  def update
    @list_permission.update(list_permission_params)
    respond_with(@list_permission)
  end

  def destroy
    @list_permission.destroy
    respond_with(@list_permission)
  end

  private
    def set_list_permission
      @list_permission = ListPermission.find(params[:id])
    end

    def list_permission_params
      params.require(:list_permission).permit(:listId, :UserId, :permissionType, :shareStatus)
    end
end
