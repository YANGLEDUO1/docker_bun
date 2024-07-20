import { Hono } from "hono";

const hono = new Hono()

hono.get("/test", ctx => {
    return ctx.json({ "status": 200 })
})

Bun.serve({
    fetch(req: Request) {
        return hono.fetch(req)
    }
})