class CreateFac < Neo4j::Migrations::Base
  def up
    add_constraint :Fac, :uuid
  end

  def down
    drop_constraint :Fac, :uuid
  end
end
