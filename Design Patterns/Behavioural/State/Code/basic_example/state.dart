abstract class State {
  void doAction(Context context);
}

class StopState implements State {
  @override
  void doAction(Context context) {
    print("STOP State main hain hum!");
    context.setState(this);
  }

  @override
  String toString() {
    return "STOP STATE";
  }
}

class StartState implements State {
  @override
  void doAction(Context context) {
    print("START STATE hai yeh");
    context.setState(this);
  }

  @override
  String toString() {
    return "START STATE";
  }
}

class Context {
  State? state;

  Context() : state = null;

  void setState(State state) {
    this.state = state;
  }

  State? getstate() {
    return state;
  }
}

void main(List<String> args) {
  Context context = new Context();
  State startState = new StartState();
  startState.doAction(context);

  State stopState = new StopState();
  stopState.doAction(context);

  print(context.getstate().toString());
}


// State k bdlte hi action change
