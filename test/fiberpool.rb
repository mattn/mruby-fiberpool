assert('FiberPool.new') do
  fp = FiberPool.new
  assert_kind_of FiberPool, fp
end

assert('FiberPool.start') do
  FiberPool.start do |pool|
    assert_kind_of FiberPool, pool
  end
end

assert('FiberPool.job') do
  n = 0
  FiberPool.start do |pool|
    pool.add do |job|
      n += 1
    end
    pool.add do |job|
      n += 1
    end
  end
  assert_equal 2, n
end
