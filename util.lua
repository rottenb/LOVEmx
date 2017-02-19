function TrimNum(longNum, n)
  local shift = 10 ^ n
  return math.floor(longNum*shift + 0.5) / shift
end
