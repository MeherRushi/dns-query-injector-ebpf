// filepath: /dns-delay-injector/dns-delay-injector/src/bpf_prog.c
#include <linux/bpf.h>
#include <linux/ptrace.h>

SEC("filter/dns_query")
int dns_query(struct __sk_buff *skb) {
    // This function will be implemented to manipulate DNS packets.
    return 0;
}

char _license[] SEC("license") = "GPL";