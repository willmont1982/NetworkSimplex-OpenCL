__kernel void nsimplex(
    const int N,
    __global beg_a* A,
    __global end_a* B,
    
{
    int k;
    int i = get_global_id(0);
    int j = get_global_id(1);
    float tmp;
    for (int32_t a = beg_a; a < end_a; ++a) {
        int32_t c = graph.states[a] *
            (graph.costs[a] +
             graph.pots[graph.tails[a]] -
             graph.pots[graph.heads[a]]);
        if (min.val > c) {
            min.val = c;
            min.ind = a;
        }
    }
    for (int32_t i = 0; i < 8; i++) {
        if (min.val > vals_iptr[i]) {
            min.val = vals_iptr[i];
            min.ind = inds_iptr[i];
        }
    }

    for (; a < end_a; ++a) {
        int32_t c = graph.states[a] *
            (graph.costs[a] +
             graph.pots[graph.tails[a]] -
             graph.pots[graph.heads[a]]);
        if (min.val > c) {
            min.val = c;
            min.ind = a;
        }
    }

    return min;
}
