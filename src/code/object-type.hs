data Query (m :: * -> *) = Query
  { idsBy :: Arguments -> m [ID],
    ids :: m [ID]
  }
