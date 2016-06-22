class Url < ActiveRecord::Base
  enum privacy: [:public_access, :private_acces]

  def self.privacies_map
    Hash[Url.privacies.map { |k, _| [k.split('_').first.capitalize, k]}]
  end
end
