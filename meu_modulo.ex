defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
      8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
      before_discount - (before_discount * (discount / 100))
  end

  def monthly(a) do
    a * 22
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    #  trunc(Float.ceil(apply_discount((daily_rate(hourly_rate) * 22), discount)))

    hourly_rate
    |> daily_rate()
    |> monthly()
    |> apply_discount(discount)
    |> Float.ceil()
    |> trunc()

  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    value = hourly_rate |> daily_rate() |> apply_discount(discount)

    budget / value
    |> Float.floor(1)
  end
end
