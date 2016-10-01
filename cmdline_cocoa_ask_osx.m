#import <Cocoa/Cocoa.h>

bool ask(const char *question, const char *explanation)
{
    [NSAutoreleasePool new];
    [NSApplication sharedApplication];
    [NSApp setActivationPolicy:NSApplicationActivationPolicyRegular];

    /* LEAVING THIS SAMPLE CODE IN CASE EXTRA FUNCTIONALITY 
    ---------------------------------------------------------------
    id menubar = [[NSMenu new] autorelease];
    id appMenuItem = [[NSMenuItem new] autorelease];
    [menubar addItem:appMenuItem];
    [NSApp setMainMenu:menubar];
    id appMenu = [[NSMenu new] autorelease];
    id appName = [[NSProcessInfo processInfo] processName];
    id quitTitle = [@"Quit" stringByAppendingString:appName];
    id quitMenuItem = [[[NSMenuItem alloc] initWithTitle:quitTitle
        action:@selector(terminate:) keyEquivalent:@"q"] autorelease];
    [appMenu addItem:quitMenuItem];
    [appMenuItem setSubmenu:appMenu];
    */

    [NSApp activateIgnoringOtherApps:YES];

    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText: [NSString stringWithUTF8String: question ] ];
    [alert setInformativeText: [NSString stringWithUTF8String: explanation ]];
    [alert addButtonWithTitle:@"Yes"];
    [alert addButtonWithTitle:@"No"];
    bool retval = ([alert runModal] == NSAlertFirstButtonReturn);

    /* WINDOW CREATION, NOT NEEDED SINCE WE'RE USING ALERTS
    ---------------------------------------------------------------
    id window = [[[NSWindow alloc] initWithContentRect:NSMakeRect(0, 0, 200, 200)
        styleMask:NSTitledWindowMask backing:NSBackingStoreBuffered defer:NO]
            autorelease];
    [window cascadeTopLeftFromPoint:NSMakePoint(20,20)];
    [window setTitle:appName];
    [window makeKeyAndOrderFront:nil];
    */

    /* SEEMS UNNECESSARY FOR PROPER OPERATION
    ---------------------------------------------------------------
    [NSApp run];
    */

    return retval;
}

// Responds -1 unless user responds "yes" to the question
int main(int argc, char *argv[])
{
    if (argc >= 3)
        if (ask(argv[1], argv[2]))
            return 0;

    return -1;
}
