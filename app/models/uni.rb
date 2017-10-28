class Uni
  include Neo4j::ActiveNode

  self.mapped_label_name = '大学'
  property :name
  has_many :out, :faclities, rel_class: :Has

end
