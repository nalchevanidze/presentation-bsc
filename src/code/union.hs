data Animal (m :: * -> *)
  = AnimalDog (Dog m)
  | Cat {name :: m Text}
  | Unidentified
