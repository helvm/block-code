/* The 99 Bottles of Beer Program
 *
 * Sept. 1st 2005
 * by Matteo Casati <devaraja87^gmail^com>
 *
 * This is the poor-style C version of
 * the program. It uses only gotos.
 */

int main()
{
    int n_beers=99;
    char pl='s';
    goto a;
  z:
    return 0;
  b:
    n_beers--;
    if(n_beers){
	pl=(n_beers==1?31:'s');
	printf("%d bottle%c of beer on the wall!\n",n_beers,pl);
	goto a;
    }else{
	printf("no more bottles of beer on the wall!\n");
	printf("No more bottles of beer on the wall,"
	       " no more bottles of beer.\nGo to the store"
	       " and buy some more, 99 bottles of beer on the wall!\n");
	goto z;
    }
  a:
    printf("%d bottle%c of beer on the wall, "
	   "%d bottle%c of beer\n",n_beers,pl,n_beers,pl);
    printf("Take one down and pass it around, ");
    goto b;
}
