class CounterController < ApplicationController
  def index
    key = '_my_counter'

    n = (cookies[key] || '0').to_i
    n = n + 1
    cookies[key] = n

    @counter = n
  end
end
