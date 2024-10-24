![image](https://github.com/user-attachments/assets/1851b157-417e-476d-a302-5bc7585b809e)


**Task:**

Develop an "entity-relationship" model of the subject area chosen by the student independently, according to the section "Requirements for the ER model."
Convert the developed model into a database schema (tables) for PostgreSQL.
Normalize the database schema to the third normal form (3NF).
Familiarize yourself with the PostgreSQL and pgAdmin 4 tools and enter several rows of data into each table using pgAdmin 4.
Description of the Subject Area Investment Portfolio Management System: It encompasses a set of items and tools aimed at helping users of the system in organizational activities regarding the monitoring and execution of transactions related to their financial assets and investments.

**Description of Entities**

User – System user

Attributes:
user_id - User identifier
name - User's first name
surname - User's last name
Purpose: To store data about users in the system.

Wallet – User's wallet linked to their profile

Attributes:
wallet_id - Identifier
status - Status (closed/open)
Purpose: To store data about wallets.

Investment – An investment purchased by the user using financial assets in a specific currency from their wallet.

Attributes:
investment_id - Identifier
date - Purchase date
annual_income - Annual income
price - Investment price
seller - Selling company
title - Name of the investment project
Purpose: To store data about investments.

Currency – The currency in which the user's financial assets are held in their wallet.

Attributes:
currency_id - Identifier
currency_name - Name
usdt_rate - Rate against USD
quantity - Amount on balance in a specific wallet
Purpose: To store data about currencies and their quantities on wallet balances.

**Description of Relationships Between Entities**

Relationship "Owner (User) - Wallet":
1:N: A user can create and have more than one wallet, but a wallet cannot belong to more than one user.

Relationship "Owner (User) - Investment":
M:N: An investment package can be purchased by more than one user and in any quantity (available from the selling company).

Relationship "Wallet - Currency":
1:N: Funds can be held in the wallet balance in any available currencies, but any currency corresponds to one record in the wallet balance list.

Relationship "Investment - Wallet":
N:1: Investment packages can be purchased in a certain quantity using the same wallet.

![image](https://github.com/user-attachments/assets/403013fb-f0d0-4465-9f09-8672f12219ce)
