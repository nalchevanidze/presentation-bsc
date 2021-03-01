class EncodeScalar a where
  encodeScalar :: a -> ScalarValue

class DecodeScalar a where
  decodeScalar :: ScalarValue -> Either Text a