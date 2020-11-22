def staircase(n,align='left')
	(1..n).each do |i|
		if align == 'left'
			i.times {print "#"}
			print "\n"
		else
			(n-i).times {print " "}
			i.times {print '#'}
			print "\n"
		end
	end
end


staircase(15,'right')
staircase(15,'left')
