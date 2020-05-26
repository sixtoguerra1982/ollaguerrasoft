class EventoPolicy < ApplicationPolicy
  def index?
    return true if user.present? && user.admin?
  end
 
  def show?
    true
  end
  
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == evento.user || user.admin?
  end
 
  def destroy?
    return true if user.present? && user == evento.user || user.admin?
  end
 
  private
 
    def evento
      record
    end
end