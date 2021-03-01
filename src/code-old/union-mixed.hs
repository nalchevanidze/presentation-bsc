data Animal (m :: * -> *)
  = UnionDog (Dog m)
  | Cat {name :: m (Name m)}
