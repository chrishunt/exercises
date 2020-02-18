class Solution
  def self.longest_path(filesystem)
    dirs = []
    longest_path = 0

    filesystem.split("\n").each do |line|
      tabs = 0

      while line.match(/^\t/)
        tabs += 1
        line.gsub!(/^\t/, '')
      end

      dirs.pop while dirs.count > tabs

      if line.match(/\./)
        path = "#{dirs.join('/')}/#{line}".size
        longest_path = path if path > longest_path
      else
        dirs.push(line)
      end
    end

    longest_path
  end
end
