class NotesController < ApplicationController
  before_action :set_customer

  def create
    @note = @customer.notes.new(note_params)
    @note.user = current_user

    if @note.save
      redirect_to @customer, notice: t('notes.created')
    else
      redirect_to @customer, alert: t('notes.error')
    end
  end

  def destroy
    @note = current_user.notes.find(params[:id])
    @note.destroy
    redirect_to @customer, notice: t('notes.destroyed')
  end

  private

  def set_customer
    @customer = current_user.customers.find(params[:customer_id])
  end

  def note_params
    params.require(:note).permit(:content)
  end
end