# Restaurant_System
Restaurant System By Accembly

This project appears to be a simple text-based menu program written in assembly language for an x86 architecture. It simulates a restaurant menu where the user can choose between breakfast items and drinks. The program displays various menu options, takes user input, calculates the total price based on the user's choices, and allows the user to go back to the main menu or exit.


1-Data Section:
Defines various strings (M1, M2, ..., M61) representing messages, menu items, and prompts.
Defines variables (DRINK, QUANTITY) to store user input.
2-Code Section:
     -MAIN PROC:
                Initializes the data segment.
                Displays the main menu using DOS interrupts (INT 21H).
                Takes user input for menu choice (BREATFAST, DRINKS, or INVALID) and performs the corresponding actions.
     -BREATFAST:
               Displays the breakfast menu and takes user input for the chosen item and quantity.
               Calculates the total price based on the item and quantity.
               Allows the user to go back to the main menu.
     -DRINKS:
             Displays the drinks menu and takes user input for the chosen item and quantity.
             Calculates the total price based on the item and quantity.
             Allows the user to go back to the main menu.
             SOFTDRINK, HERBS, ESPRESSO, MOKA, COFFEE, TEA:
             Jumps to the COMMON section with a specific value for BL (item price).
     -COMMON:
             Calculates the total price based on the chosen item and quantity.
             Allows the user to go back to the main menu.
     -INVALID:
             Displays an error message for invalid input and prompts the user to try again.
     -EXIT:
            Exits the program.
