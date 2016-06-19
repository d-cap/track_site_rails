class Url < ActiveRecord::Base
  enum privacy: [ :public_access, :private_acces ]

  def self.get_privacies
    Hash[Url.privacies.map { |k, v| [k.split('_').first.capitalize, k]}]
  end
end
