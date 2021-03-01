class Encode (m :: * -> *) a where
  encode :: a -> m (ResolverValue m)

class Decode a where
  decode :: ValidValue -> ResolverState a

class DeriveType (context :: TypeCategory) (a :: *) where
  deriveType :: f context a -> SchemaBuilder TypeDefinition
