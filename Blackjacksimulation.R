choose(4,1)*choose(16,1)/choose(52,2)
nb.blackjack=function(times) {
	card1=sample(1:52, size=times, replace=T)
	card2=sample(1:52, size=times, replace=T)
	k=0
	for (i in 1:times) {
		if ((card1[i]>=37 & card2[i]<=4) | (card1[i]<=4 & card2[i]>=37)){
			k=k+1
		}
	}
	return(k)
}
prob.blackjack=function(times) {
	return(nb.blackjack(times)/times)
}
prob.blackjack(50000)