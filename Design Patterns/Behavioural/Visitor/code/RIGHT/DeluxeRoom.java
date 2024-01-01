public class DeluxeRoom implements RoomElement{
    int roomPrice = 2;
    @Override
    public void accept(RoomVisitor visitor) {
        visitor.visit(this);
    }
}