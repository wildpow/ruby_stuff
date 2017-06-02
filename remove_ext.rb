


def remove_ext
  

  file = File.open('test.txt','r')
# new_file = File.new('new.txt', 'w')
  while line = file.gets do
    movie_title = line.chomp.to_s

      new_name = File.basename(movie_title,File.extname(movie_title))
      puts new_name

  end
end


#    index = movie_title.index('.')
#    if index != nil
#      movie_title.slice!(index,8)
#      puts movie_title
#    else
#      puts movie_title
#    end
#  end
#end
remove_ext
