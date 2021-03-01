data Animal (m :: * -> *)
  = Cat {name :: m Text}
  | Dog {name :: m Text}
