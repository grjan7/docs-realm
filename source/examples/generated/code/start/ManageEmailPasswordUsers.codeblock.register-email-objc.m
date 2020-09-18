RLMApp *app = [RLMApp appWithId:YOUR_REALM_APP_ID];
RLMEmailPasswordAuth *client = [app emailPasswordAuth];
NSString *email = @"skroob@example.com";
NSString *password = @"password12345";
[client registerUserWithEmail:email password:password completion:^(NSError *error) {
    if (error != nil) {
        NSLog(@"Failed to register: %@", [error localizedDescription]);
        
        return;
    }
    // Registering just registers. You can now log in.
    NSLog(@"Successfully registered user.");
}];