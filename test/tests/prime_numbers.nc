int count;
int result[50];

int abs(int a) {
    if (a < 0) {
        return -a;
    } else {
        return a;
    }
}

int isMultiplier(int a, int b) {
    int i;
    int step;
    int flag;

    if (b == 0) {
        return 0;
    } else {
        i = 1;
        flag = 0;
    }

    if (a < 0) {
        if (b < 0) {
            i = 1;
        } else {
            i = -1;
        }
    } else {
        if (b < 0) {
            i = -1;
        } else {
            i = 1;
        }
    }
    step = i;
    i = i - abs(i);
    while (abs(i) < abs(a) + 1) {
        if (i * b == a) {
            flag = 1;
            break;
        } else {
            i = i + step;
            continue;
        }
    }
    return flag;

}

int integerDivision(int a, int b) {
    int i;
    int step;
    int flag;

    if (b == 0) {
        return 123456789;
    } else {
        i = 1;
        flag = 0;
    }

    if (a < 0) {
        if (b < 0) {
            i = 1;
            a = a * -1;
            b = b * -1;
        } else {
            i = -1;
            a = a * -1;
            b = b * -1;
        }
    } else {
        if (b < 0) {
            i = -1;
        } else {
            i = 1;
        }
    }
    step = i;
    i = i - abs(i);

    while (abs(i) < abs(a) + 1) {
        if (i * b == a) {
            return i;
        } else {
            int f1;
            int f2;
            f1 = i * b < a;
            f2 = a < (i + step) * b;
            if (f1 == f2) {
                return i + (b == abs(b)) - 1;
            } else {
                i = i + step;
            }

        }
    }
    return 123456789;
}

int isPrime(int a) {
    int i;
    int halfa;
    if (a == 1) {
        return 0;
    } else {
        i = 2;
        halfa = integerDivision(a, 2);
        while (i < halfa + 1) {
            if (isMultiplier(a, i)) {
                return 0;
            } else {
                i = i + 1;
            }
        }
        return 1;
    }


}

void printPrimeNumbersLessThan(int a) {
    int i;
    i = 1;
    while (i < a) {
        i = i + 1;
        if (isPrime(i)) {
            output(i);
            continue;
        } else {
            continue;
        }
    }

}



void main(void) {
    int a;
//    output(abs(5));
//    output(isMultiplier(0, -8));
//    output(integerDivision(10, -3));
//    output(isPrime(37));

    printPrimeNumbersLessThan(30);

//    output


}