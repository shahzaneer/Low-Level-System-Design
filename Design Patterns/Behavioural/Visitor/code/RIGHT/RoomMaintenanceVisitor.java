public class RoomMaintenanceVisitor implements RoomVisitor{

    @Override
    public void visit(SingleRoom singleRoomObj) {
        System.out.println("Single Room Maintenance");
    }

    @Override
    public void visit(DoubleRoom doubleRoomObj) {
        System.out.println("Double Room Maintenance");

    }

    @Override
    public void visit(DeluxeRoom deluxeRoomRoomObj) {
        System.out.println("Deluxe Room Maintenance");
    }
}

