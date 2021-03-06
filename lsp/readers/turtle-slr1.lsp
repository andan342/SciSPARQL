;;; SLR1-parser generated by GRM Parser Builder
;;; (C) 2001-2011, Andrej Andrejev

;;; INPUT-FN is a function returning (terminal . value) pairs
;;; or NIL when input is exhausted
;;; DATA is any data structure transmitted to the parser and visible in reduce actions

(defun turtle-slr1-parser (input-fn data)
  (let ((stack '((^))) ; contains pairs (key . value), ^ is bottom-marker
        (input (funcall input-fn)) (delayed-input nil))
    (flet ((shift (key) ; SHIFT op
             (push (cons key (cdr input)) stack) ; push new key with input value
             (if delayed-input (progn (setq input delayed-input)
                                      (setq delayed-input nil)) ; restore input after REDUCE
               (setq input (funcall input-fn)))) ; feed input
           (reduce (n) ; REDUCE op: returns list of n top values from stack
             (let ((values nil))
               (dotimes (i n) (push (cdr (pop stack)) values))
               (setq delayed-input input) ; non-terminal will be put into INPUT
               values)))
      (do () (nil t) ; main cycle - no stop condition
       (unless input (setq input (cons '-! nil))) ; end-marker
       (selectq (caar stack) ; outer KEY switch
         (URI-TAIL-11.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(11) op
              (setq input (cons '<RDF-TERM> (apply #'(LAMBDA (A B) (LIST (QUOTE BLANK) B)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (<RESOURCE>-12.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(12) op
              (setq input (cons '<RDF-TERM> (nth 0 (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (<LITERAL>-13.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(13) op
              (setq input (cons '<RDF-TERM> (nth 0 (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (<BRACKETED-PROP-LIST>-14.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(14) op
              (setq input (cons '<RDF-TERM> (nth 0 (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (RIGHT-BRACKET-16.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(16) op
              (setq input (cons '<RDF-TERM> (apply #'(LAMBDA (A B) (GEN-BLANK)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (<RDF-TERM>-8.1
           (selectq (car input)
            ((COMMA RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(8) op
              (setq input (cons '<OBJ-LIST> (apply #'(LAMBDA (A) (LIST A)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA RIGHT-BRACKET SEMICOLON DOT) input))))
         (<RDF-TERM>-9.1
           (selectq (car input)
            ((COMMA RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(9) op
              (setq input (cons '<OBJ-LIST> (apply #'(LAMBDA (A B C) (CONS C A)) (reduce 3)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA RIGHT-BRACKET SEMICOLON DOT) input))))
         (RIGHT-BRACKET-15.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(15) op
              (setq input (cons '<BRACKETED-PROP-LIST> (apply #'(LAMBDA (A B C) (LET ((RES (GEN-BLANK))) (EMIT-TRIPLES DATA RES B) RES)) (reduce 3)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (<RDF-TERM>-19.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR) ; REDUCE(19) op
              (setq input (cons '<RDF-TERMS> (apply #'(LAMBDA (A B) (CONS B A)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR) input))))
         (RIGHT-PAR-17.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(17) op
              (setq input (cons '<RDF-TERM> (apply #'(LAMBDA (A B C) (NREVERSE B)) (reduce 3)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (AT-ID-31.1
           (selectq (car input)
            ((DOUBLE-CAP STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(31) op
              (setq input (cons '<STRING-LANG> (apply #'(LAMBDA (A B) (USTR A B)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(DOUBLE-CAP STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) input))))
         (FALSE-29.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(29) op
              (setq input (cons '<LITERAL> (apply #'(LAMBDA (A) (QUOTE FALSE)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (TRUE-28.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(28) op
              (setq input (cons '<LITERAL> (apply #'(LAMBDA (A) (QUOTE TRUE)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (<RESOURCE>-27.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(27) op
              (setq input (cons '<LITERAL> (apply #'(LAMBDA (A B C) (LIST (QUOTE TYPED) A C)) (reduce 3)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (NUMBER-25.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(25) op
              (setq input (cons '<LITERAL> (apply #'(LAMBDA (A B) (* (READ B) -1)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (NUMBER-24.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(24) op
              (setq input (cons '<LITERAL> (apply #'(LAMBDA (A) (READ A)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (A-23.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(23) op
              (setq input (cons '<RESOURCE> (apply #'(LAMBDA (A) (URI "http://www.w3.org/1999/02/22-rdf-syntax-ns#type")) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (URI-TAIL-22.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(22) op
              (setq input (cons '<RESOURCE> (apply #'(LAMBDA (A) (LIST (QUOTE PREFIXED) "" A)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (URI-TAIL-21.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(21) op
              (setq input (cons '<RESOURCE> (apply #'(LAMBDA (A B) (LIST (QUOTE PREFIXED) A B)) (reduce 2)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (URI-20.1
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(20) op
              (setq input (cons '<RESOURCE> (apply #'(LAMBDA (A) (URI A)) (reduce 1)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) input))))
         (DOT-4.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) ; REDUCE(4) op
              (setq input (cons '<NTRIPLES> (apply #'(LAMBDA (A B C D) (EMIT-TRIPLES DATA B (NREVERSE C)) A) (reduce 4)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) input))))
         (DOT-3.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) ; REDUCE(3) op
              (setq input (cons '<NTRIPLES> (apply #'(LAMBDA (A B C D E) (IF (STRING= (STRING-DOWNCASE B) "prefix") (ADD-PREFIX DATA "" D) (ERROR (CONCAT "Unknown statement: @" B))) A) (reduce 5)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) input))))
         (DOT-2.1
           (selectq (car input)
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) ; REDUCE(2) op
              (setq input (cons '<NTRIPLES> (apply #'(LAMBDA (A B C D E F) (IF (STRING= (STRING-DOWNCASE B) "prefix") (ADD-PREFIX DATA C E) (ERROR (CONCAT "Unknown statement: @" B))) A) (reduce 6)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) input))))
         (^
           (selectq (car input)
            (<NTRIPLES> (shift '<NTRIPLES>-0.0-2.6-3.5-4.4)) ; REDUCE completion
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) ; REDUCE(1) op
              (setq input (cons '<NTRIPLES> (apply #'(LAMBDA NIL T) (reduce 0)))))
            ((-!) (return nil)) ; ACCEPT EMPTY INPUT
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE AT-ID -!) input))))
         (<NTRIPLES>-0.0-2.6-3.5-4.4
           (selectq (car input)
            (<RDF-TERM> (shift '<RDF-TERM>-4.3)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            ((-!) (return (cdar stack))) ; ACCEPT op
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI (shift 'URI-20.1)) ; SHIFT op
            (AT-ID (shift 'AT-ID-2.5-3.4)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(-! UNDERSCORE LEFT-BRACKET LEFT-PAR STRING FALSE TRUE MINUS NUMBER A URI-TAIL PREF URI AT-ID) input))))
         (UNDERSCORE-11.2
           (selectq (car input)
            (URI-TAIL (shift 'URI-TAIL-11.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI-TAIL) input))))
         (LEFT-BRACKET-15.3-16.2
           (selectq (car input)
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<PRED-OBJ-LIST> (shift '<PRED-OBJ-LIST>-6.4-7.2-15.2)) ; REDUCE completion
            (<RDF-TERM> (shift '<RDF-TERM>-5.2)) ; REDUCE completion
            (RIGHT-BRACKET (shift 'RIGHT-BRACKET-16.1)) ; SHIFT op
            (URI (shift 'URI-20.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(RIGHT-BRACKET URI PREF URI-TAIL A NUMBER MINUS TRUE FALSE STRING LEFT-BRACKET LEFT-PAR UNDERSCORE) input))))
         (<RDF-TERM>-5.2
           (selectq (car input)
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<OBJ-LIST> (shift '<OBJ-LIST>-5.1-9.3-10.2)) ; REDUCE completion
            (<RDF-TERM> (shift '<RDF-TERM>-8.1)) ; REDUCE completion
            (URI (shift 'URI-20.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI PREF URI-TAIL A NUMBER MINUS TRUE FALSE STRING LEFT-BRACKET LEFT-PAR UNDERSCORE) input))))
         (<OBJ-LIST>-5.1-9.3-10.2
           (selectq (car input)
            ((RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(5) op
              (setq input (cons '<PRED-OBJ-LIST> (apply #'(LAMBDA (A B) (LIST (CONS A (NREVERSE B)))) (reduce 2)))))
            (COMMA (shift 'COMMA-9.2-10.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(RIGHT-BRACKET SEMICOLON DOT COMMA) input))))
         (COMMA-9.2-10.1
           (selectq (car input)
            (<RDF-TERM> (shift '<RDF-TERM>-9.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            ((COMMA RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(10) op
              (setq input (cons '<OBJ-LIST> (nth 0 (reduce 2)))))
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI (shift 'URI-20.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA RIGHT-BRACKET SEMICOLON DOT UNDERSCORE LEFT-BRACKET LEFT-PAR STRING FALSE TRUE MINUS NUMBER A URI-TAIL PREF URI) input))))
         (<PRED-OBJ-LIST>-6.4-7.2-15.2
           (selectq (car input)
            (RIGHT-BRACKET (shift 'RIGHT-BRACKET-15.1)) ; SHIFT op
            (SEMICOLON (shift 'SEMICOLON-6.3-7.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(RIGHT-BRACKET SEMICOLON) input))))
         (SEMICOLON-6.3-7.1
           (selectq (car input)
            (<RDF-TERM> (shift '<RDF-TERM>-6.2)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            ((RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(7) op
              (setq input (cons '<PRED-OBJ-LIST> (nth 0 (reduce 2)))))
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI (shift 'URI-20.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(RIGHT-BRACKET SEMICOLON DOT UNDERSCORE LEFT-BRACKET LEFT-PAR STRING FALSE TRUE MINUS NUMBER A URI-TAIL PREF URI) input))))
         (<RDF-TERM>-6.2
           (selectq (car input)
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<OBJ-LIST> (shift '<OBJ-LIST>-6.1-9.3-10.2)) ; REDUCE completion
            (<RDF-TERM> (shift '<RDF-TERM>-8.1)) ; REDUCE completion
            (URI (shift 'URI-20.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI PREF URI-TAIL A NUMBER MINUS TRUE FALSE STRING LEFT-BRACKET LEFT-PAR UNDERSCORE) input))))
         (<OBJ-LIST>-6.1-9.3-10.2
           (selectq (car input)
            ((RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(6) op
              (setq input (cons '<PRED-OBJ-LIST> (apply #'(LAMBDA (A B C D) (CONS (CONS C (NREVERSE D)) A)) (reduce 4)))))
            (COMMA (shift 'COMMA-9.2-10.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(RIGHT-BRACKET SEMICOLON DOT COMMA) input))))
         (LEFT-PAR-17.3
           (selectq (car input)
            (<RDF-TERMS> (shift '<RDF-TERMS>-17.2-19.2)) ; REDUCE completion
            ((STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR) ; REDUCE(18) op
              (setq input (cons '<RDF-TERMS> (apply #'(LAMBDA NIL NIL) (reduce 0)))))
            (return (list 'SYNTAX-ERROR (caar stack) '(STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR) input))))
         (<RDF-TERMS>-17.2-19.2
           (selectq (car input)
            (<RDF-TERM> (shift '<RDF-TERM>-19.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI (shift 'URI-20.1)) ; SHIFT op
            (RIGHT-PAR (shift 'RIGHT-PAR-17.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(UNDERSCORE LEFT-BRACKET LEFT-PAR STRING FALSE TRUE MINUS NUMBER A URI-TAIL PREF URI RIGHT-PAR) input))))
         (STRING-30.1-31.2
           (selectq (car input)
            ((DOUBLE-CAP STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA) ; REDUCE(30) op
              (setq input (cons '<STRING-LANG> (apply #'(LAMBDA (A) (USTR A)) (reduce 1)))))
            (AT-ID (shift 'AT-ID-31.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(DOUBLE-CAP STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A UNDERSCORE LEFT-BRACKET LEFT-PAR RIGHT-BRACKET SEMICOLON DOT RIGHT-PAR COMMA AT-ID) input))))
         (<STRING-LANG>-26.1-27.3
           (selectq (car input)
            ((COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT) ; REDUCE(26) op
              (setq input (cons '<LITERAL> (nth 0 (reduce 1)))))
            (DOUBLE-CAP (shift 'DOUBLE-CAP-27.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(COMMA STRING NUMBER MINUS TRUE FALSE URI PREF URI-TAIL A LEFT-PAR LEFT-BRACKET UNDERSCORE RIGHT-PAR RIGHT-BRACKET SEMICOLON DOT DOUBLE-CAP) input))))
         (DOUBLE-CAP-27.2
           (selectq (car input)
            (<RESOURCE> (shift '<RESOURCE>-27.1)) ; REDUCE completion
            (URI (shift 'URI-20.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI PREF URI-TAIL A) input))))
         (MINUS-25.2
           (selectq (car input)
            (NUMBER (shift 'NUMBER-25.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(NUMBER) input))))
         (PREF-21.2
           (selectq (car input)
            (URI-TAIL (shift 'URI-TAIL-21.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI-TAIL) input))))
         (<RDF-TERM>-4.3
           (selectq (car input)
            (<RESOURCE> (shift '<RESOURCE>-12.1)) ; REDUCE completion
            (<LITERAL> (shift '<LITERAL>-13.1)) ; REDUCE completion
            (<BRACKETED-PROP-LIST> (shift '<BRACKETED-PROP-LIST>-14.1)) ; REDUCE completion
            (<STRING-LANG> (shift '<STRING-LANG>-26.1-27.3)) ; REDUCE completion
            (<PRED-OBJ-LIST> (shift '<PRED-OBJ-LIST>-4.2-6.4-7.2)) ; REDUCE completion
            (<RDF-TERM> (shift '<RDF-TERM>-5.2)) ; REDUCE completion
            (URI (shift 'URI-20.1)) ; SHIFT op
            (PREF (shift 'PREF-21.2)) ; SHIFT op
            (URI-TAIL (shift 'URI-TAIL-22.1)) ; SHIFT op
            (A (shift 'A-23.1)) ; SHIFT op
            (NUMBER (shift 'NUMBER-24.1)) ; SHIFT op
            (MINUS (shift 'MINUS-25.2)) ; SHIFT op
            (TRUE (shift 'TRUE-28.1)) ; SHIFT op
            (FALSE (shift 'FALSE-29.1)) ; SHIFT op
            (STRING (shift 'STRING-30.1-31.2)) ; SHIFT op
            (LEFT-BRACKET (shift 'LEFT-BRACKET-15.3-16.2)) ; SHIFT op
            (LEFT-PAR (shift 'LEFT-PAR-17.3)) ; SHIFT op
            (UNDERSCORE (shift 'UNDERSCORE-11.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI PREF URI-TAIL A NUMBER MINUS TRUE FALSE STRING LEFT-BRACKET LEFT-PAR UNDERSCORE) input))))
         (<PRED-OBJ-LIST>-4.2-6.4-7.2
           (selectq (car input)
            (SEMICOLON (shift 'SEMICOLON-6.3-7.1)) ; SHIFT op
            (DOT (shift 'DOT-4.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(SEMICOLON DOT) input))))
         (AT-ID-2.5-3.4
           (selectq (car input)
            (URI-TAIL (shift 'URI-TAIL-3.3)) ; SHIFT op
            (PREF (shift 'PREF-2.4)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI-TAIL PREF) input))))
         (URI-TAIL-3.3
           (selectq (car input)
            (URI (shift 'URI-3.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI) input))))
         (URI-3.2
           (selectq (car input)
            (DOT (shift 'DOT-3.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(DOT) input))))
         (PREF-2.4
           (selectq (car input)
            (URI-TAIL (shift 'URI-TAIL-2.3)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI-TAIL) input))))
         (URI-TAIL-2.3
           (selectq (car input)
            (URI (shift 'URI-2.2)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(URI) input))))
         (URI-2.2
           (selectq (car input)
            (DOT (shift 'DOT-2.1)) ; SHIFT op
            (return (list 'SYNTAX-ERROR (caar stack) '(DOT) input))))
         (return 'INTERNAL-ERROR))))))
