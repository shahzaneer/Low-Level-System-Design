
public class Runner {
    public static void main(String[] args) {
        // Elements (objects) rooms in this case
        RoomElement singleRoomObj = new SingleRoom();
        RoomElement doubleRoomObj = new DoubleRoom();
        RoomElement deluxeRoomObj = new DeluxeRoom();

        // Visitor (Operations) pricing & maintenance in this case
        RoomVisitor pricingRoomVisitor = new RoomPricingVisitor();
        RoomVisitor maintenanceRoomVisitor = new RoomMaintenanceVisitor();

        // It will be done via DOUBLE dispatching as
        // For Single Room
        singleRoomObj.accept(pricingRoomVisitor); // single room pricing
        singleRoomObj.accept(maintenanceRoomVisitor); // single room maintenance

        // For Double Room
        doubleRoomObj.accept(pricingRoomVisitor);
        doubleRoomObj.accept(maintenanceRoomVisitor);

        // For Deluxe Room
        deluxeRoomObj.accept(pricingRoomVisitor);
        deluxeRoomObj.accept(maintenanceRoomVisitor);

        // ! MAIN AMBITION WAS TO SEPARATE Object(element) from operations(Visitors)
        //! which it has done ✔🎈

    }
}
