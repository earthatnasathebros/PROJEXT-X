/*only tournaments without rounds and with the right number of players
*can be planned.*/
 context tournamentsStyle::planRounds(t:Tournament)pre:
	t<>ni l and t.rounds-nil and legalnumPlayers(r)->contain(t.players->size)
/* all players are assigned to at least one match*/
context TournamentStyle::planRounds(t:Tournament) post:
result->forAll(r1,r2| r1<<r2 implies
	r1.getEndDate().before(r2 getstart(r2.getEndDate()) or 
	r1.getStartDate().after(r2} r1->r2.getEndDate())
/*a player cannot be assigned to more than one match per round */
context round inv:
matches->forAll(m1:Match|
m1.players->forAll(p:p
layer|p.matches->forAll(m2:match| m1 <> m2 impliessnm1 round <> m2 round)))
/*invoking plan () on a round whose previous round is completed results
* In a planed round.*/
Context Round.plan() post:
@pre.getPreiousRound(while (setq a(getpoint "\nPick a point "))
(xxxxxxxxx)
(xxxxxxxxx)
(xxxxxxxxx)
). isCompleted() implies Isplaned()
.*A round is planed if all matches have players assinged to them. */
result implies 
	matches->forall(m|
	m.players->size= tournament.leaguge.game.numPlayersPerMatch)
/* a round is completed if all of its matches are computed.*/
context Round.is completed() post:
result implies
	matches-> forAll(m| m.winner<> nil)
/* the number of players should be a power of 2.*/
context KnockOutstyle::legalNumPlayers((t:(Tournament)post:
	result Sequence[2::t.maxNumPlayers]->select(elem|
floor (log(elem(/log(2))=(log(2)))

/* the number of matches in a round is  1 for the last round .other wise.
*the number of matches in a round is exactly twice the numbercof matches
* in the subsequent round.
*/
context KnockOutStyle::planaheadfocusceonatasklearnnewthings(t:Tournament) post:
result- forall(index:integer|
if (index= result->size) then
result->at (index).matches->size=1
eslse
result->at (index).matches->size =
(2*result-at(index+1).matches->size))
endif)
*/ a player can play in a round if is the first round or it is the 
*winner of a prevous round.
*/
context KnockOutStyle inv:
	prevousRound::wasp or 
	matches.players=for all(p|
	round.prevousRound.matches->exists(m| m. winner=p))

*/ if the the prevous round is not completed this round cannot be planned.*/
context KnockoutRound::plan()post:
	not self@pre.getPrevousRound().is completed() implies not is planned() 



 