class FlexibleResolver (f :: * -> *) (a :: k) where
  type Flexible (m :: * -> *) a :: *
  type Composed (m :: * -> *) f a :: *

instance FlexibleResolver f (a :: *) where
  type Flexible m a = m a
  type Composed m f a = m (f a)

instance FlexibleResolver f (a :: (* -> *) -> *) where
  type Flexible m a = m (a m)
  type Composed m f a = m (f (a m))

type ResolverO o e m a = Flexible (Resolver o e m) a

type ComposedResolver o e m f a = Composed (Resolver o e m) f a
