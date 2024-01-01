public class SingleRoom implements RoomElement {
    int roomPrice = 1;
    @Override
    public void accept(RoomVisitor visitor) {
        visitor.visit(this);
    }
}
