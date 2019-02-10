class DynamicProgramming

  def initialize
    @blair_cache = {1 => 1, 2 => 2}
  end

  def blair_nums(n)
    return @blair_cache[n] unless @blair_cache[n].nil?
    ans = blair_nums(n - 1) + blair_nums(n - 2) + ((n - 1) + (n - 2))
    @blair_cache[n] = ans 
    return ans
  end

  def frog_hops_bottom_up(n)
    cache = frog_cache_builder(n)
    cache[n]
  end

  def frog_cache_builder(n)
    cache = { 1 => [[1]], 2 => [[1, 1], [2]], 3 => [[1, 1, 1], [1, 2], [2, 1], [3]] }
    return cache unless cache[n].nil?
    (4..n).each do |i|
      ans = cache[i - 1] + cache[i - 2] + cache[i - 3]
      ans.map! do |el|
        changer = n - el.inject(:+) unless el.nil?
        el << changer unless el.nil? || changer.nil? || changer < 1
      end
      cache[i] = ans
    end
    cache
  end

  def frog_hops_top_down(n)

  end

  def frog_hops_top_down_helper(n)

  end

  def super_frog_hops(n, k)

  end

  def knapsack(weights, values, capacity)

  end

  # Helper method for bottom-up implementation
  def knapsack_table(weights, values, capacity)

  end

  def maze_solver(maze, start_pos, end_pos)
  end

  def nth_odd(n)
    return n + (n - 1)
  end
end
