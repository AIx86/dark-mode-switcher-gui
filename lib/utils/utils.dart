class Convertor {
  static boolToHex(bool value) {
    const hexTrue = 0x00000001;
    const hexFalse = 0x00000000;

    return value ? hexTrue : hexFalse;
  }
}
