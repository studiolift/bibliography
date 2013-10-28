require "bibliography/version"

module Bibliography
  autoload :BIC, 'bibliography/bic'

  # Convenience method for accessing the subject
  # defininitions of the given standard
  def self.subjects(standard=:BIC)
    klass = Bibliography.const_get standard.upcase.to_s
    klass::Subject
  end
end
