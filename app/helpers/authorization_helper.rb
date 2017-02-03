module AuthorizationHelper

  # This module determines if the user is logged in and if so
  # what the user's access level is
  # TODO add admin session support

  def logged_in?
    return !!(user_session)
  end

  def patient_logged_in?
    return !!(PatientSession.find)
  end

  def doctor_logged_in?
    return !!(DoctorSession.find)
  end

  def admin_logged_in?
    return !!(AdminSession.find)
  end

  def current_patient
    return user_session.try(:patient)
  end

  def current_doctor
    return user_session.try(:doctor)
  end

  def current_admin
    return user_session.try(:admin)
  end

  def user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = PatientSession.find || DoctorSession.find || AdminSession.find
  end

  def user
    return @current_user if defined?(@current_user)
    @current_user = user_session.try(:patient) || user_session.try(:doctor) || user_session.try(:admin)
  end

end
