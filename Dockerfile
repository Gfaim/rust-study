FROM rust:latest as builder

WORKDIR /app

COPY Cargo.toml .
COPY Cargo.lock .
COPY src/ src/

RUN rustup target add x86_64-unknown-linux-musl

RUN cargo build --release

RUN cargo install --target x86_64-unknown-linux-musl --path .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /usr/local/cargo/bin/rust-study .

CMD [ "./rust-study" ]