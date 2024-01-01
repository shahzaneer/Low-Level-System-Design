
public interface RoomVisitor {
public void visit(SingleRoom singleRoomObj);
public void visit(DoubleRoom doubleRoomObj);
public void visit(DeluxeRoom deluxeRoomRoomObj);
}


// in this way, a new class will be created for each operation and that operation
// will be applied to all the elements.

// You can make as many elements you want to make and as many operations you want to apply
// there will not be any problem with scaling them.