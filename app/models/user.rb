class User < ActiveRecord::Base
  ROLE = %w(Student Owner)

  belongs_to :role, polymorphic: true

  def login
    self[:first_name]
  end

  def has_role?
    self[:type].nil?
  end

  def turn_to_owner
    Owner.create(role)
  end

  ROLE.each do |role|
    logger.debug "Defining boolean checker for user role: #{role}"
    define_method("is_#{role.downcase}?") do
      self[:role_type] == role
    end
  end
end
