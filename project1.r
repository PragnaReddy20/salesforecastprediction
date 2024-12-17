# Load required libraries
library(forecast)
library(ggplot2)

# Generate example sales data
set.seed(123)
sales_data <- ts(rnorm(100, mean = 500, sd = 50), start = 2020)

# Fit an ARIMA model to the sales data
sales_model <- auto.arima(sales_data)

# Generate forecasts for the next 10 time points
sales_forecast <- forecast(sales_model, h = 10)

# Print the forecasted sales values
print(sales_forecast)

# Plot forecasted sales with prediction intervals
plot(sales_forecast)

# Check the ggplot2 package is loaded
if (!require("ggplot2")) {
  install.packages("ggplot2")
}

