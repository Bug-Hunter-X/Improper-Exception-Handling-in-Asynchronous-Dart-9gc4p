# Improper Exception Handling in Asynchronous Dart

This repository demonstrates a common error in Dart: improper exception handling in asynchronous operations using `Future` and `async/await`.  The example showcases how to correctly handle exceptions using `try-catch` blocks and the `rethrow` statement.

## The Problem

The initial `fetchData` function lacks proper exception handling.  While it catches exceptions, it doesn't re-throw them, potentially hiding crucial error information from the calling function.  This can lead to unexpected behavior and difficulties in debugging.

## The Solution

The solution demonstrates the correct use of `rethrow`.  By re-throwing the exception after the catch block, it ensures that the exception propagates up the call stack, allowing for more robust error handling at a higher level in the application.

## How to run the code:
1. Clone the repository.
2. Make sure you have Dart and the http package installed.
3. Run the `bug.dart` and `bugSolution.dart` files separately.