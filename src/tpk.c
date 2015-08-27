

double f (double x) {
    return (sqrt(fabs(x)) + 5.0*pow(x,3.0));
}

int main (int argc, char* argv[]) {
    double A [11], y;
    int i;

    for (i=0; i<11; i++) {
        scanf ("%lf", &A[i]);
    }

    for (i=10; i>=0; i--) {
        y = f (A[i]);
        if (y > 400.0) {
            printf ("%d TOO LARGE\n", i);
        } else {
            printf ("%d %f\n", i, y);
        }
    }
    return (0);
}
