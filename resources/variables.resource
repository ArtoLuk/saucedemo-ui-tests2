*** Variables ***
${BROWSER}                          chromium
${HEADLESS}                         ${TRUE}
${VIEWPORT}                         {"width": 1280, "height": 720}

${URL}                              https://www.saucedemo.com/
${STANDARD_USER}                    standard_user
${LOCKED_USER}                      locked_out_user
${PASSWORD}                         secret_sauce

${USERNAME_INPUT}                   css=[data-test="username"]
${PASSWORD_INPUT}                   css=[data-test="password"]
${LOGIN_BUTTON}                     css=[data-test="login-button"]
${ERROR_MESSAGE}                    css=[data-test="error"]
${LOCKED_OUT_ERROR_MESSAGE}         Sorry, this user has been locked out.

${INVENTORY_TITLE}                  css=[data-test="title"]
${INVENTORY_TITLE_TEXT}             Products
${CART_LINK}                        css=[data-test="shopping-cart-link"]
${SORT_DROPDOWN}                    css=[data-test="product-sort-container"]
${ITEM_NAME_FIRST}                  css=.inventory_item_name >> nth=0
${ADD_BACKPACK_BUTTON}              css=[data-test="add-to-cart-sauce-labs-backpack"]
${REMOVE_BACKPACK_BUTTON}           css=[data-test="remove-sauce-labs-backpack"]
${CART_BADGE}                       css=[data-test="shopping-cart-badge"]
${CART_BADGE_COUNT}                 1
${MENU_BUTTON}                      css=#react-burger-menu-btn
${LOGOUT_LINK}                      css=[data-test="logout-sidebar-link"]
${SORT_VALUE_ZA}                    za
${Z_TO_A_FIRST_PRODUCT_NAME}        Test.allTheThings() T-Shirt (Red)

${CART_TITLE}                       css=[data-test="title"]
${CHECKOUT_BUTTON}                  css=[data-test="checkout"]
${CHECKOUT_FIRST_NAME}              css=[data-test="firstName"]
${CHECKOUT_LAST_NAME}               css=[data-test="lastName"]
${CHECKOUT_ZIP}                     css=[data-test="postalCode"]
${CONTINUE_BUTTON}                  css=[data-test="continue"]
${FINISH_BUTTON}                    css=[data-test="finish"]
${CHECKOUT_COMPLETE_HEADER}         css=[data-test="complete-header"]
${CHECKOUT_COMPLETE_TEXT}           Thank you for your order!
${CHECKOUT_OVERVIEW_TITLE}          Checkout: Overview
${YOUR_CART_TITLE}                  Your Cart
${CHECKOUT_FIRST_NAME_VALUE}        Jane
${CHECKOUT_LAST_NAME_VALUE}         Doe
${CHECKOUT_ZIP_VALUE}               10001
