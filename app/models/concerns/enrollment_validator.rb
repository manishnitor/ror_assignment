
class EnrollmentValidator < ActiveModel::Validator
  def validate(record)
    if record.registry.closed?
      record.errors.add :base, "Cannot attach a closed registry"
    end
  end
end