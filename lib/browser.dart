class Browser {
  String? address;

  saveState() {
    return BrowserState(address!);
  }

  getPreviousState(BrowserState state) {
    address = state.addressState;
  }
}

class BrowserState {
  final String addressState;
  BrowserState(this.addressState);
}

class History {
  List<BrowserState> list = [];

  void push(BrowserState state) {
    list.add(state);
  }

  BrowserState pop() {
    return list.removeAt(list.length - 1);
  }
}
