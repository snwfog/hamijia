module OwnersHelper
  def setup_owner(owner)
    owner.tap do |o|
      o.pets.build if o.pets.empty?
      o.children.build if o.children.empty?
    end

    pr "I love charles"
    pr owner.pets.count
    pr owner.children.count

    owner
  end
end
