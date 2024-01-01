class HotelBooking {

    // For instance we have today these three operations
    // and if we want to add new operations tomorrow we need to change the class

    public void roomAllocation() {

    }

    public int roomRentCalculation() {
        return 0;
    }

    public void initiateRoomMaintenance() {

    }
}

// The Visitor design pattern helps in this by separting the operations
// (Algorithms) fro the caller objects. so that we can have our separte
// operations classes and as many as we want.