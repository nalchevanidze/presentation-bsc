data
  RootResolver
    (m :: * -> *)
    event
    (query :: (* -> *) -> *)
    (mutation :: (* -> *) -> *)
    (subscription :: (* -> *) -> *) = RootResolver
  { queryResolver :: query (Resolver QUERY event m),
    mutationResolver :: mutation (Resolver MUTATION event m),
    subscriptionResolver :: subscription (Resolver SUBSCRIPTION event m)
  }
