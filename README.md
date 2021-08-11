# Tinyid

A bit.ly-like tiny id generator porting from [short_url.py](https://github.com/mozillazg/ShortURL/blob/master/shorturl/libs/short_url.py)

A bit-shuffling approach is used to avoid generating consecutive, predictable URLs. However, 
the algorithm is deterministic and will guarantee that no collisions will occur.

## Installing

```bash
make
make install
```

## Example

In this example a 64bit number 10000 is encoded to a 4-characters string "R3fu" that's decoded to its original value.

```c
#include <stdio.h>
#include <stdint.h>
#include <tinyid.h>

int main() {
    char s[4];
    tinyid_t id;

    // initiate
    tinyid_init(&id, TINYID_BS, TINYID_AL, TINYID_AL_LEN);
    // encode
    tinyid_encode(&id, 10000, s, 4);
    printf("%s\n", s);   // R3fu
    // decode
    int64_t y = tinyid_decode(&id, s, 4);
    printf("%lld\n", y); // 10000
}
```

## Other Portings

Here's a [Go implementation](https://github.com/mivinci/tinyid) of tinyid.