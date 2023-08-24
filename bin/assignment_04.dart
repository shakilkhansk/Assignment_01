abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited ${amount.toStringAsFixed(2)}. New balance: ${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      balance += balance * (interestRate / 100);
      print('Withdrew ${amount.toStringAsFixed(2)}. New balance: ${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid withdrawal amount or insufficient funds.');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount > 0 && amount <= (balance + overdraftLimit)) {
      balance -= amount;
      print('Withdrew ${amount.toStringAsFixed(2)}. New balance: ${balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds for withdrawal.');
    }
  }
}

void main() {
  // Create a SavingsAccount instance
  var savingsAccount = SavingsAccount(12345, 1000.0, 5.0); // Account number, initial balance, interest rate
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);

  // Create a CurrentAccount instance
  var currentAccount = CurrentAccount(54321, 2000.0, 1000.0); // Account number, initial balance, overdraft limit
  currentAccount.deposit(300.0);
  currentAccount.withdraw(2500.0);
}
