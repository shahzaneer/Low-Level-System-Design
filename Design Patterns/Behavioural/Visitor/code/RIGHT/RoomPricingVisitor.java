public class RoomPricingVisitor implements RoomVisitor{

    @Override
    public void visit(SingleRoom singleRoomObj) {
        System.out.println("Single Room Pricing");
                System.out.println(singleRoomObj.roomPrice);

    }

    @Override
    public void visit(DoubleRoom doubleRoomObj) {
        System.out.println("Double Room Pricing");
                System.out.println(doubleRoomObj.roomPrice);

}

    @Override
    public void visit(DeluxeRoom deluxeRoomRoomObj) {
        System.out.println("Deluxe Room Pricing");
                System.out.println(deluxeRoomRoomObj.roomPrice);

    }}