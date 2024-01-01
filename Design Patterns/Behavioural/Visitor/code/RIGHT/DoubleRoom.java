public class DoubleRoom implements RoomElement{
    int roomPrice = 4;
    @Override
    public void accept(RoomVisitor visitor) {
        visitor.visit(this);
    }}
