data Animal (m :: * -> *)
  = Cat {name :: m Text}
  | Unidentified
