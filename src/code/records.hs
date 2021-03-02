data Deity = Deity { 
  name :: Text,
  age :: Int
}

deities :: [Deity]
deities = [
    Deity { name = "Morpheus", age  = 12000 },
    Deity { age  = 12000     , name = "Zeus"}
  ]