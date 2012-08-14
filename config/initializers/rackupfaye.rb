Thread.new do
  system("rackup faye.ru -s thin -E production -p 33909")
end
