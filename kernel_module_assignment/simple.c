#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/slab.h>

typedef struct birthday
{
       int day;
       int month;
       int year;
       struct list_head list;
} BIRTHDAY;

/*creates a birthday struct, returns it's list_head * item: `list`*/
struct list_head *create_birthday(int day, int month, int year);

struct list_head *create_birthday(int day, int month, int year)
{
       BIRTHDAY *b;
       b = kmalloc(sizeof(*b), GFP_KERNEL);
       b->day = day;
       b->month = month;
       b->year = year;
       INIT_LIST_HEAD(&b->list);
       return &b->list;
}

/* This function is called when the module is loaded. */
int simple_init(void)
{
       printk(KERN_INFO "Loading Module\n");

       LIST_HEAD(birthday_list);
       list_add(create_birthday(2, 8, 1995), &birthday_list);
       list_add(create_birthday(4, 6, 1965), &birthday_list);
       list_add(create_birthday(1, 1, 2000), &birthday_list);
       list_add(create_birthday(9, 2, 1997), &birthday_list);
       list_add(create_birthday(1, 1, 1973), &birthday_list);

       BIRTHDAY *birthday = NULL;
       int i = 1;
       list_for_each_entry(birthday, &birthday_list, list)
       {
              printk(KERN_INFO "Printing #%d birthday", i);
              printk(KERN_INFO "%d / %d / %d", birthday->day, birthday->month, birthday->year);
              i++;
       }

       printk(KERN_INFO "Housekeeping....", i);
       BIRTHDAY *ptr, *next;
       list_for_each_entry_safe(ptr, next, &birthday_list, list)
       {
              list_del(&ptr->list);
              kfree(ptr);
       }

       return 0;
}

/* This function is called when the module is removed. */
void simple_exit(void)
{
       printk(KERN_INFO "Removing Module\n");
}

/* Macros for registering module entry and exit points. */
module_init(simple_init);
module_exit(simple_exit);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Simple Module");
MODULE_AUTHOR("SGG");
