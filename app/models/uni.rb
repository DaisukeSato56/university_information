class Uni
  include Neo4j::ActiveNode

  self.mapped_label_name = '大学'
  property :name
  has_many :out, :faclities, type: :has, model_class: :Fac
end
