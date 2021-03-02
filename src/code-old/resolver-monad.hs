data
  Resolver
    (o :: OperationType)
    e
    (m :: * -> *)
    v
  where
  ResolverQ ::
    ResolverStateT () m v ->
    Resolver QUERY e m v
  ResolverM ::
    ResolverStateT e m v ->
    Resolver MUTATION e m v
  ResolverS ::
    ResolverStateT () m (e -> ResolverStateT () m v) ->
    Resolver SUBSCRIPTION e m v