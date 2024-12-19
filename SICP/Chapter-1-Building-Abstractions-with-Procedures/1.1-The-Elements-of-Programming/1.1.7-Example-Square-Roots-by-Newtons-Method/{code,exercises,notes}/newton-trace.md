
| Iteration | Current Guess | Square of Guess | Absolute Difference | Next Guess (Improved) |
|:---------:|:-------------:|:---------------:|:-------------------:|:----------------------:|
|     0     |      1.0      |       1.0       |        71.0         |        36.5           |
|     1     |     36.5      |     1332.25     |       1260.25       |       19.2363         |
|     2     |    19.2363    |     370.038     |       298.038       |       11.48895        |
|     3     |   11.48895    |     131.981     |        59.981       |       8.877975        |
|     4     |   8.877975    |       78.0      |         6.0         |       8.4959875       |
|     5     |  8.4959875    |      ~72.18     |        ~0.18        |      8.48609375       |
|     6     |  8.48609375   |      ~72.014    |       ~0.014        |      8.4859969        |
|     7     |  8.4859969    |     ~72.0001    |      ~0.0001        |       Good Enough     |

### Notes:
1. **Square of Guess**: Calculated as the square of the current guess.
2. **Absolute Difference**: `|guess² - 72|`, representing how far the square of the guess is from the target value.
3. **Next Guess (Improved)**: Calculated using the formula `(guess + (72 / guess)) / 2`.

At iteration 7, the difference is less than 0.001, so the process stops, and the square root of 72 is approximated as **8.4859969**.