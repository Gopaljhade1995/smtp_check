# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    # Send welcome email
    UserMailer.welcome_email(resource).deliver_now

    super(resource)
  end
end
 