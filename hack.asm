JP_TITLE_SCREEN_OFFSET      equ $178001
JP_TITLE_SCREEN_LENGTH      equ $1581
NEW_TITLE_SCREEN_BANK       equ $d0

SECTION "title_screen_1", ROMX[$469f], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
SECTION "title_screen_2", ROMX[$46aa], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
        ld      de, $4beb
SECTION "title_screen_3", ROMX[$46b5], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
        ld      de, $4d38

SECTION "main_menu_1", ROMX[$4860], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
        ld      de, $4d73
SECTION "main_menu_2", ROMX[$486b], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
        ld      de, $54f5
SECTION "main_menu_3", ROMX[$4876], BANK[1]
        ld      b, NEW_TITLE_SCREEN_BANK
        ld      de, $5572

SECTION "title_screen", ROMX[$4001], BANK[NEW_TITLE_SCREEN_BANK]
incbin "metalgear-ghostbabel.gbc", JP_TITLE_SCREEN_OFFSET, JP_TITLE_SCREEN_LENGTH
