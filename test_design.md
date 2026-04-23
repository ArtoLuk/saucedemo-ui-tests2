# Test Design (Saucedemo)

## Features and risks selected
1. **Authentication** (high risk, gateway to all core journeys)
   - Risk: users cannot sign in, or blocked users gain access.
   - Coverage:
     - `Valid User Can Login And See Inventory`
     - `Locked Out User Is Blocked From Login`

2. **Catalog usability and correctness** (core conversion path)
   - Risk: sorting/filtering defects hide or misorder products.
   - Coverage:
     - `Product Sorting Affects Display Order` (Z→A ordering check)

3. **Cart behavior** (critical purchase funnel state)
   - Risk: add-to-cart fails or badge count is incorrect.
   - Coverage:
     - `User Can Add Item To Cart`

4. **Checkout completion** (highest business impact)
   - Risk: payment funnel breaks before order completion.
   - Coverage:
     - `User Can Complete Checkout` (cart → info → overview → completion)

5. **Session termination / security hygiene**
   - Risk: logout regression leaves sessions open.
   - Coverage:
     - `User Can Logout From Inventory`

## Design choices for maintainability
- **Keyword-structured Page Object style**: selectors and actions are split by page (`resources/pages/*.resource`).
- **Stable locator strategy**: primary use of `data-test` attributes and role-agnostic deterministic selectors.
- **No fixed sleeps**: synchronization is done with `Wait For Elements State` and state assertions.
- **Isolation**: each test gets a fresh browser context to prevent state leakage.

## Why this is efficient
This suite prioritizes the smallest set of tests that validates the most failure-prone user-critical flows (auth, cart, checkout) while including one representative catalog behavior and session management check.
