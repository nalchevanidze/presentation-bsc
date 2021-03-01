data Animal (m :: * -> *)
  = AnimalDog (Dog m)
  | Cat {name :: m (Name m)}
