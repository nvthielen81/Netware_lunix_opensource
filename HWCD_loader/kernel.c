void out_idell(void)
{
    int i;
    for (i = 0; i < 10; i++) {
        printk(KERN_INFO "IDELL: %d\n", i);
        msleep(1000); // Sleep for 1 second
    }
}

void loader_kernel(void)
{
    printk(KERN_INFO "Loader kernel main function called.\n");
    // Additional kernel code can be added here
}


void suspend_system(void)
{
    printk(KERN_INFO "System is suspending...\n");
    // Code to suspend the system can be added here
}