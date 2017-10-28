class Has
  include Neo4j::ActiveRel
  from_class :Uni
  to_class :Fac

  
end
