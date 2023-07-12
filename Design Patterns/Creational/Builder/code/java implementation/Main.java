
public class Main {
    public static void main(String[] args) {

        // the beautiful use of method chaining
        User u1 = new User.UserBuilder()
                .setEmail("shahzaneer.dev")
                .build();
        User u2 = new User.UserBuilder()
                .setName("Deepak")
                .setId("1")
                .setEmail("deepak@khatri.com")
                .build();

        System.out.println(u2.getName() + u2.getEmail() + u2.getId());

    }
}
