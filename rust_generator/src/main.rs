use std::env;
use std::fs::File;
use std::io::prelude::*;
use std::process;

fn help() {
    println!("Usage: <program> <count_not> <not_rust_file>");
}

fn main() -> std::io::Result<()> {
    let args: Vec<String> = env::args().collect();

    if args.len() != 3 {
        help();
        process::exit(1);
    }

    let count_not: i32 = args[1].parse().unwrap();
    let bash_not_file = &args[2];

    let count_ten_remainder = count_not % 10;
    let count_ten_times = count_not / 10;

    let mut file = File::create(bash_not_file)?;

    file.write_all(b"fn main() {\n")?;
    file.write_all(b"    let bool_val =\n")?;

    for _ in 0..count_ten_times {
        file.write_all(b"        ! ! ! ! ! ! ! ! ! !\n")?;
    }

    for _ in 0..count_ten_remainder {
        file.write_all(b"        !\\n")?;
    }

    file.write_all(b"    true;\n")?;
    file.write_all(b"    println!(\"{}\", bool_val);\n")?;
    file.write_all(b"}\n")?;

    Ok(())
}
