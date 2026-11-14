square_area(Side, Area) :-
    Area is Side * Side.

square_perimeter(Side, Perimeter) :-
    Perimeter is 4 * Side.

rectangle_area(Width, Height, Area) :-
    Area is Width * Height.

rectangle_perimeter(Width, Height, Perimeter) :-
    Perimeter is 2 * (Width + Height).

triangle_area(Base, Height, Area) :-
    Area is (Base * Height) / 2.

triangle_perimeter(A, B, C, Perimeter) :-
    Perimeter is A + B + C.

user("admin", "1234").
user("student", "2026").
user("user1", "pass123").

login :-
    write('Enter Username: '),
    read_line_to_string(user_input, Username),
    write('Enter Password: '),
    read_line_to_string(user_input, Password),
    check_login(Username, Password, 3).

check_login(Username, Password, Attempts) :-
    (   user(Username, Password)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        (   Attempts > 1
        ->  NewAttempts is Attempts - 1,
            writeln('Please try again.'),
            login_attempt(NewAttempts)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).

login_attempt(Attempts) :-
    write('Enter Username: '),
    read_line_to_string(user_input, Username),
    write('Enter Password: '),
    read_line_to_string(user_input, Password),
    check_login(Username, Password, Attempts).

% Task 3:
% Prolog can be used in our practical project to represent knowledge using facts and rules.
% Logical conditions and comparisons can process information and help the system make decisions.
