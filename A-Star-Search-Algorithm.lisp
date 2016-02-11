;A* Search Algorithm 

; f(n) = g(n) + h(n)
; Arad 366
; Bucharest 0
; Craiova 160
; Dobreta 242
; Eforie 161
; Fagaras 178
; Giurgiu 77
; Hirsova 151
; Iasi 226
; Lugoj 244
; Mehadai 241
; Neamt 234
; Oradea 380
; Pitesti 98
; Rimincu 193
; Sibiu 253
; Timisoara 329
; Urziceni 80
; Vaslui 119
; Zerind 374

; (setf A 366)
; (setf B 0)
; (setf C 160)
; (setf D 242)
; (setf E 161)
; (setf F 178)
; (setf G 77)
; (setf H 151)
; (setf I 226)
; (setf L 244)
; (setf M 241)
; (setf N 234)
; (setf O 380)
; (setf P 98)
; (setf R 193)
; (setf S 253)
; (setf T 329)
; (setf U 80)
; (setf V 119)
; (setf Z 374)

(defclass City ()
	((hn	   :accessor hn		  :initarg :hn		 :initform  0)
	 ; (neighbor :accessor neighbor :initarg :neighbor :initform ())
	 (f_s	   :accessor f_s	  :initarg :f_s 	:initform "Q")
	 (f_gn	   :accessor f_gn	  :initarg :f_gn	:initform  0)
	 (s_s	   :accessor s_s	  :initarg :s_s 	:initform "Q")
	 (s_gn	   :accessor s_gn	  :initarg :s_gn	:initform  0)
	 (t_s	   :accessor t_s	  :initarg :t_s 	:initform "Q")
	 (t_gn	   :accessor t_gn	  :initarg :t_gn	:initform  0)
	 (l_s	   :accessor l_s	  :initarg :l_s 	:initform "Q")
	 (l_gn	   :accessor l_gn	  :initarg :l_gn	:initform  0)
	)
)

(setf A (make-instance 'City :hn 366 :f_s "S" :f_gn   0 :s_s "T" s_gn 118 :t_s "Z" :t_gn 75))
(setf B (make-instance 'City :hn   0 :f_s "F" :f_gn 211 :s_s "P" s_gn 101 :t_s "G" :t_gn  90 :l_s "U" :l_gn  85))
(setf C (make-instance 'City :hn 160 :f_s "D" :f_gn 120 :s_s "P" s_gn 138 :t_s "R" :t_gn  146))
(setf D (make-instance 'City :hn 242 :f_s "C" :f_gn 120 :s_s "M" s_gn  75))
(setf E (make-instance 'City :hn 161 :f_s "H" :f_gn  86))
(setf F (make-instance 'City :hn 178 :f_s "S" :f_gn  99 :s_s "B" s_gn 211))
(setf G (make-instance 'City :hn  77 :f_s "B" :f_gn  90))
(setf H (make-instance 'City :hn 151 :f_s "E" :f_gn  86 :s_s "U" s_gn  98))
(setf I (make-instance 'City :hn 226 :f_s "N" :f_gn  87 :s_s "V" s_gn  92))
(setf L (make-instance 'City :hn 244 :f_s "M" :f_gn  70 :s_s "T" s_gn 111))
(setf M (make-instance 'City :hn 241 :f_s "L" :f_gn  70 :s_s "D" s_gn  75))
(setf N (make-instance 'City :hn 234 :f_s "I" :f_gn  87))




