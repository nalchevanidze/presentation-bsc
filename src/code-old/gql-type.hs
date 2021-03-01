class GQLType a where
  type KIND a :: DerivingKind
  type KIND a = TYPE

  implements :: f a -> [SchemaT TypeName]

  description :: f a -> Maybe Text

  getDescriptions :: f a -> Map Text Description

  typeOptions :: f a -> GQLTypeOptions -> GQLTypeOptions
