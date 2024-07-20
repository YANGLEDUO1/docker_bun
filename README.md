# docker_bun

To install dependencies:

```bash
bun install
```

To run:

```bash
bun run main.ts
```

This project was created using `bun init` in bun v1.1.20. [Bun](https://bun.sh) is a fast all-in-one JavaScript runtime.



docker build -t bun_test:1.0.0 . && docker run -itd --name test -p 8435:3000 bun_test:1.0.0
