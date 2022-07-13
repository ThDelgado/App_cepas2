# frozen_string_literal: true

class ApplicationPolicy
  include Pundit::Authorization
  
  attr_reader :current_user, :record

  def initialize(current_user, record)
    raise Pundit::NotAuthorizedError, "must be logged in" unless user 
    @current_user = current_user
    @record = record
  end

  def index?
    false
  end

  def show?
    current_user.admin? || current_user.record.exists?(id: record)
  end

  def create?
    current_user.admin?
  end

  def new?
  
  end

  def update?
    curren_user.admin? 
  end

  def edit?
    curren_user.admin?
  end

  def destroy?
   
  end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end
