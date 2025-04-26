class HomeController < ApplicationController
    def index
      # Podstawowe statystyki
      @customers_count = current_user.customers.count
      @recent_customers = current_user.customers.order(created_at: :desc).limit(5)
      @recent_notes = current_user.notes.includes(:customer).limit(5)
    end
    
    def settings
      # Ustawienia użytkownika, w tym języka
    end
    
    def update_settings
      if current_user.update(user_params)
        redirect_to settings_path, notice: t('settings.updated')
      else
        render :settings
      end
    end
    
    private
    
    def user_params
      params.require(:user).permit(:language)
    end
  end