LIBNAME mylib "P:\"
data myfactor;
set mylib.sasclus;
/* do the factor analysis - set eigenval rotate = varimax scree PCS*/
/*watch out for 'didn't converge'*/

proc factor data = myfactor

/*Shake the jar how many times*/
maxiter = 100
/*do you want PAF or PCA*/
method = principal

/*extract as many factors as there are var*/
/*otherwise there could be no data reduction (start with x end with 1)*/
/*Kaizer criterian*/
mineigen = 1

/*interperate tables easily*/
rotate = varimax

/*KMO stat*/
msa

/*a plot*/
scree

/*Poop out the vars*/
score
print;

/*here are the vars that I'd like you to do the pca on*/
var first
	pay
	keep
	love
	friend
	connect
	express
	family;
run;
