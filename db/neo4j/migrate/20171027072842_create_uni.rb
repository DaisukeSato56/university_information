class CreateUni < Neo4j::Migrations::Base
  def up
    add_constraint :Uni, :uuid
  end

  def down
    drop_constraint :Uni, :uuid
  end
end
