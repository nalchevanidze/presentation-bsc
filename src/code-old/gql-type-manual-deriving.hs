data Deity = Deity {name :: Text}
  deriving (Generic)

instance GQLType Deity where
  description = const "A supernatural being."
