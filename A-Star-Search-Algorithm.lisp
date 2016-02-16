; A* Search Algorithm 

(defclass City ()
	((hn	   :accessor hn		  :initarg :hn		:initform 0)
	 (name	   :accessor name	  :initarg :name 	:initform "Dummy")
	 (f_s	   :accessor f_s	  :initarg :f_s 	:initform "")
	 (f_gn	   :accessor f_gn	  :initarg :f_gn	:initform 0)
	 (s_s	   :accessor s_s	  :initarg :s_s 	:initform "")
	 (s_gn	   :accessor s_gn	  :initarg :s_gn	:initform 0)
	 (t_s	   :accessor t_s	  :initarg :t_s 	:initform "")
	 (t_gn	   :accessor t_gn	  :initarg :t_gn	:initform 0)
	 (l_s	   :accessor l_s	  :initarg :l_s 	:initform "")
	 (l_gn	   :accessor l_gn	  :initarg :l_gn	:initform 0)
	)
)

(setf A  (make-instance 'City :hn 366 :f_gn 140 :s_gn 118 :t_gn 75            :name "Arad"))
(setf B  (make-instance 'City :hn   0 :f_gn 211 :s_gn 101 :t_gn  90 :l_gn  85 :name "Bucharest"))
(setf C  (make-instance 'City :hn 160 :f_gn 120 :s_gn 138 :t_gn 146           :name "Craiova"))
(setf D  (make-instance 'City :hn 242 :f_gn 120 :s_gn  75                     :name "Dobreta"))
(setf E  (make-instance 'City :hn 161 :f_gn  86                               :name "Eforie"))
(setf F  (make-instance 'City :hn 178 :f_gn  99 :s_gn 211                     :name "Fagaras"))
(setf G  (make-instance 'City :hn  77 :f_gn  90                               :name "Giurgiu"))
(setf H  (make-instance 'City :hn 151 :f_gn  86 :s_gn  98                     :name "Hirsova"))
(setf I  (make-instance 'City :hn 226 :f_gn  87 :s_gn  92                     :name "Iasi"))
(setf L  (make-instance 'City :hn 244 :f_gn  70 :s_gn 111                     :name "Lugoj"))
(setf M  (make-instance 'City :hn 241 :f_gn  70 :s_gn  75                     :name "Mehadia"))
(setf N  (make-instance 'City :hn 234 :f_gn  87                               :name "Neamt"))
(setf O  (make-instance 'City :hn 380 :f_gn  71 :s_gn 151                     :name "Oradea"))
(setf P  (make-instance 'City :hn  98 :f_gn  97 :s_gn 138 :t_gn 101           :name "Pitesti"))
(setf R  (make-instance 'City :hn 193 :f_gn  80 :s_gn  97 :t_gn 146           :name "Rimnicu Vilcea"))
(setf S  (make-instance 'City :hn 253 :f_gn 151 :s_gn 140 :t_gn  99 :l_gn  80 :name "Sibiu"))
(setf Ti (make-instance 'City :hn 329 :f_gn 118 :s_gn 111                     :name "Timisoara"))
(setf U  (make-instance 'City :hn  80 :f_gn  85 :s_gn 142 :t_gn  98           :name "Urziceni"))
(setf V  (make-instance 'City :hn 199 :f_gn  92 :s_gn 142                     :name "Vaslui"))
(setf Z  (make-instance 'City :hn 374 :f_gn  71 :s_gn  75                     :name "Zerind"))

(setf (f_s A) S)
(setf (s_s A) Ti)
(setf (t_s A) Z)

(setf (f_s B) F)
(setf (s_s B) P)
(setf (t_s B) G)
(setf (l_s B) U)

(setf (f_s C) D)
(setf (s_s C) P)
(setf (t_s C) R)

(setf (f_s D) C)
(setf (s_s D) M)

(setf (f_s E) H)

(setf (f_s F) S)
(setf (s_s F) B)

(setf (f_s G) B)

(setf (f_s H) E)
(setf (s_s H) U)

(setf (f_s I) N)
(setf (s_s I) V)

(setf (f_s L) M)
(setf (s_s L) Ti)

(setf (f_s M) L)
(setf (s_s M) D)

(setf (f_s N) I)

(setf (f_s O) Z)
(setf (s_s O) S)

(setf (f_s P) C)
(setf (s_s P) R)
(setf (t_s P) B)

(setf (f_s R) S)
(setf (s_s R) P)
(setf (t_s R) C)

(setf (f_s S) O)
(setf (s_s S) A)
(setf (t_s S) F)
(setf (l_s S) R)

(setf (f_s Ti) A)
(setf (s_s Ti) L)

(setf (f_s U) B)
(setf (s_s U) V)
(setf (t_s U) H)

(setf (f_s V) I)
(setf (s_s V) U)

(setf (f_s Z) O)
(setf (s_s Z) A)

(format t "   A* Search Algorithm
Initial State: Arad
Goal         : Bucharest")

(setf gn 0)

(defun astar (init_city)
	(format t "~%~%Fringe : (")
		(format t (name init_city)) ;do loop
		(format t ")~%")
		(format t (name init_city))
		(format t "'s f(n) = " )
		(format t "~a" (setf fn (+ (hn init_city) gn))) ; initial f(n) for Arad
		(setf current init_city)						; set init_city to current city

	(format t "~%Next most minimum f(n) cost = " )
	(format t "~a" (setf min_fn (min (if (= (f_gn current) 0) 9999 (+ (hn (f_s current)) (f_gn current))) 
									 (if (= (s_gn current) 0) 9999 (+ (hn (s_s current)) (s_gn current))) 
	  								 (if (= (t_gn current) 0) 9999 (+ (hn (t_s current)) (t_gn current)))
	  								 (if (= (l_gn current) 0) 9999 (+ (hn (l_s current)) (l_gn current)))
	  							)
	  				)
	)
	(cond   ((= min_fn (+ (hn (f_s current)) (f_gn current))) (setf next (f_s current)))
		    ((= min_fn (+ (hn (s_s current)) (s_gn current))) (setf next (s_s current)))
		    ((= min_fn (+ (hn (t_s current)) (t_gn current))) (setf next (t_s current)))
		    ((= min_fn (+ (hn (l_s current)) (l_gn current))) (setf next (l_s current)))
	)

	(cond   ((= min_fn (+ (hn (f_s current)) (f_gn current))) (setf gn (+ gn (f_gn current))))
		    ((= min_fn (+ (hn (s_s current)) (s_gn current))) (setf gn (+ gn (s_gn current))))
		    ((= min_fn (+ (hn (t_s current)) (t_gn current))) (setf gn (+ gn (t_gn current))))
		    ((= min_fn (+ (hn (l_s current)) (l_gn current))) (setf gn (+ gn (l_gn current))))
	)
	
	(format t "~%Next = " )
	(format t (name next))
	(format t "~%Total Distance Traveled = ~a" gn )

	(if (equal "Bucharest" (name next)) (print 'END) (astar next))
)

(astar A)

; (loop while (cond) do)
 
; (setf current-fringe (sort temp #'< :key #'second))
