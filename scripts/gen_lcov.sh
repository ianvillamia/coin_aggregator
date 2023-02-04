flutter test --coverage --test-randomize-ordering-seed random
genhtml coverage/lcov.info -o coverage/

open coverage/index.html