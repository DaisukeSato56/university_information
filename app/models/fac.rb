class Fac
  include Neo4j::ActiveNode

  self.mapped_label_name = '学部'
  property :dep
  has_many :in, :universities, rel_class: :Has

end
