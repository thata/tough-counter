class CounterController < ApplicationController
  def index
    key = '_my_counter'

    n = (cookies[key] || '0').to_i
    n = n + 1
    cookies[key] = {value: n, expires: Time.new(2030)}

    @counter = n
  end
end
