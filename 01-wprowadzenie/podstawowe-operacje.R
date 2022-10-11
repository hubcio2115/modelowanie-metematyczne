#R - podstawowe operacje
#=======================
#http://cran.r-project.org/
#https://rstudio.com/

#============================
#============================ ZADANIE A (wykonaj wszystkie ponizsze cwiczenia)
#Więcej o każdej funkcj po napisaniu w konsoli
#np. ?ceiling; ?floor; ... itd

#Ctrl L - czysci konsole


#============== Liczby - zaokraglenia
#Cwiczenie 1.  Sprawdz dzialanie ponizszych  funkcji dla x=0.6789
x=0.6789
ceiling(x) # 1
floor(x) # 1
trunc(x, ...) # 0
round(x, digits = 2) # 0.68

#============== Wektory
#Cwiczenie 2. Sprawdz na przykladach dzialanie operatora ":".
1:10; # 1 2 3 4 5 6 7 8 9 10
10:-10 # 10 9 8 7 6 5 4 3 2 1 0 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10

#Cwiczenie 3. Sprawdz na przykladach dzialanie funkcji "seq".
seq(-10,10, by=2) # -10 -8 -6 -4 -2 0 2 4 6 8 10
seq(-10,10, length=50)
# [1] -10.0000000  -9.5918367  -9.1836735  -8.7755102  -8.3673469  -7.9591837  -7.5510204  -7.1428571  -6.7346939
# [10]  -6.3265306  -5.9183673  -5.5102041  -5.1020408  -4.6938776  -4.2857143  -3.8775510  -3.4693878  -3.0612245
# [19]  -2.6530612  -2.2448980  -1.8367347  -1.4285714  -1.0204082  -0.6122449  -0.2040816   0.2040816   0.6122449
# [28]   1.0204082   1.4285714   1.8367347   2.2448980   2.6530612   3.0612245   3.4693878   3.8775510   4.2857143
# [37]   4.6938776   5.1020408   5.5102041   5.9183673   6.3265306   6.7346939   7.1428571   7.5510204   7.9591837
# [46]   8.3673469   8.7755102   9.1836735   9.5918367  10.0000000


#Cwiczenie 4. Sprawdz na przykladach dzialanie funkcji "rep".
rep(1:3,5) # 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3
rep(1:3,length.out=17) # 1 2 3
rep(1:3,rep(5,3)) # 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3

#Cwiczenie 5. Jak wywolujemy wyrazy wektora. Sprawdz na przykladach.
a=seq(-10,10,by=2); a # -10  -8  -6  -4  -2   0   2   4   6   8  10
a[3] # -6
a[c(4,6,8)] # -4 0 4
a[1:5] # -10 -8 -6 -4 -2

#Sprawdz co bedzie jesli w nawiasie jest liczba ujemna. 
#lub operator logiczny.
a[-3] # -10  -8  -4  -2   0   2   4   6   8  10
a[-c(4,6,8)] # -10  -8  -6  -2   2   6   8  10
a[-(1:5)] # 0  2  4  6  8 10
a[a>0] # 2  4  6  8 10

#Cwiczenie 6. Wykonaj ponizsze operacje.
b=1:10
b[1:5]=0         #wywolaj  wektor b
# 0  0  0  0  0  6  7  8  9 10
b[c(1,3,5)]=-1   #wywolaj  wektor b
# -1  0 -1  0 -1  6  7  8  9 10

#Cwiczenie 7. Na wektorach 
x=seq(0,6,by=2) # 0 2 4 6
y=rev(x) #co robi funkcja "rev"?
# 6 4 2 0

#sprawdz dzialania
2-x # 2 0 -2 -4
x+y # 6 6 6 6
x*y # 0 8 8 0
1/(x+1)+y^2 # 37.0000000 16.3333333  4.2000000  0.1428571

#Cwiczenie 8.  Dla wektora
x=rep(1:3,2); x # 1 2 3 1 2 3
#sprawdz dzialanie funkcji 
max(x) # 3
min(x) # 1
range(x) # 1 3
length(x) # 6
sort(x) # 1 1 2 2 3 3
sum(x) # 12
prod(x) # 36
#Sprawdz tez order(rank), cummax, cummin, which, diff.

#Cwiczenie 9. Dla wektorow
a=c(6,2,4,6,5,3,9,7,3,1,6) # 6 2 4 6 5 3 9 7 3 1 6
b=c(1,0,8,4,9,1,6,5,7,2,9) # 1 0 8 4 9 1 6 5 7 2 9
#sprawdz dzialanie ponizszych  funkcji
c(a,b) # 6 2 4 6 5 3 9 7 3 1 6 1 0 8 4 9 1 6 5 7 2 9

pmax(a,b) # 6 2 8 6 9 3 9 7 7 2 9
pmin(a,b) # 1 0 4 4 5 1 6 5 3 1 6
cbind(a,b)
rbind(a,b)
#oraz
t=cbind(1:4,5:8); t
as.vector(t)

#Cwiczenie 10. (kombinatoryka)
#liczba permutacji  n elementowych: n!
1*2*3*4*5
factorial(5)

#symbol Newtona - liczba kombinacji k-elementowych ze zbioru n-elementowego
choose(5,2)

#========================= proste wykresy, funkcje: plot, points
#Cwiczenie 10. 
plot(1:10)
points(1:10,rep(4,10), pch=19, col=2)        #dodaje do isniejacego wykresu
points(1:10,rep(2,10), typ="h", col="blue")

#wiecej na temat funkcji 'plot', 'points'  dowiesz sie piszac w konsoli ?plot, ?points 

#========================= proste wykresy, funkcje: curve, abline
#Cwiczenie 11. Narysuj na jednym wykresie wykres funkcji sin(x) i cos(x)

curve(x^2, xlim=c(-4,4), ylim=c(-16,16), 
      xlab=NA, ylab=NA,
      col="blue")
curve(-x^3, col="green", add=T)  #dodajemy wykres do istniejacego
abline(a=0,b=2, col=2)          #dodaje do istniejacego wykresu
points(1,2, pch=19, col=2)
abline(h=0, col="grey")
abline(v=0, col="grey")

#wiecej na temat funkcji 'curve', 'abline' dowiesz sie piszac w konsoli ?curve, ?abline
t=seq(0, 2*pi, pi/6)
y=sin(t)
plot(t, y, type="l", col="green")

a=seq(0, 2*pi, pi/6)
b=cos(a)
lines(a, b, type="l", col="blue")

abline(v=0)
abline(a=0, b=0)

#=========================
#========================= ZADANIE B 
#Przeczytaj 00KombPrawdop_slajdy.pdf i zrob znajdujace sie tam przyklady
#wykorzystujac R.

#==================================== 
#Literatura do R np.
#Data Wrangling with R, Springer -- B.C. Borhmke, Springer
#ggplot2, Springer --  Hadley Wickham
