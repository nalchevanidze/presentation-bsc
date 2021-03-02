class DecodeKind (kind :: DerivingKind) a where
  decodeKind :: Proxy kind -> ValidValue -> ResolverState a

instance
  DecodeKind (KIND a) a =>
  Decode a
  where
  decode = decodeKind (Proxy (KIND a))

instance
  (DecodeScalar a, GQLType a) =>
  DecodeKind SCALAR a
  where
  decodeKind _ = withScalar decodeScalar

instance
  (Generic a, GQLType a) =>
  DecodeKind TYPE a
  where
  decodeKind _ = decodeTypeWithGeneric
