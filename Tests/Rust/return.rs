// Returning stuff in rust

fn main() {
    let x = add(20, 3);
    println!("{x}");
}

fn add(a: i32, b: i32) -> i32 {
    a + b
}
