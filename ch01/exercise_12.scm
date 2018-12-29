; Exercise 1.12: The following pattern of numbers is called Pascal’s triangle.
;
;         1
;       1   1
;     1   2   1
;   1   3   3   1
; 1   4   6   4   1
;       . . .
; The numbers at the edge of the triangle are all 1, and each number inside the
; triangle is the sum of the two numbers above it.35 Write a procedure that
; computes elements of Pascal’s triangle by means of a recursive process.

(define (pascals-triangle row col)
  (cond ((= row 0) 1)
        ((or (= col 0) (= col row)) 1)
        (else (+ (pascals-triangle (- row 1) (- col 1))
                 (pascals-triangle (- row 1) col)))))

(pascals-triangle 0 0)

(pascals-triangle 1 0)
(pascals-triangle 1 1)

(pascals-triangle 2 0)
(pascals-triangle 2 1)
(pascals-triangle 2 2)

(pascals-triangle 3 0)
(pascals-triangle 3 1)
(pascals-triangle 3 2)
(pascals-triangle 3 3)

(pascals-triangle 4 0)
(pascals-triangle 4 1)
(pascals-triangle 4 2)
(pascals-triangle 4 3)
(pascals-triangle 4 4)
