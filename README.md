## Wallet

Use this application to track your personal spending. Enter a new transaction whenever money comes in to or leaves your account.

### Running the application

After downloading the code,

```bash
bundle install
```

```bash
bin/rake db:migrate
```

```bash
bin/rails server
```

### URL structure (when running locally)

Account dashboard:
```
localhost:3000
```

List of transactions:
```
localhost:3000/transactions
```

New transactions:
```
localhost:3000/transactions/new
```
