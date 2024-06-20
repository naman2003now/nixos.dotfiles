// Problem: $(PROBLEM)
// Contest: $(CONTEST)
// Judge: $(JUDGE)
// URL: $(URL)
// Memory Limit: $(MEMLIM)
// Time Limit: $(TIMELIM)
// Start: $(DATE)
// Author: naman2003now

#![allow(dead_code, unused)]
use std::collections::*;

macro_rules! read {
    ($()out:ident as $()type:ty) => {
        let mut inner = String::new();
        std::io::stdin().read_line(&mut inner).expect("A String");
        let $()out = inner.trim().parse::<$()type>().expect("Parsable");
    };
}

macro_rules! read_str {
    ($()out:ident) => {
        let mut inner = String::new();
        std::io::stdin().read_line(&mut inner).expect("A String");
        let $()out: Vec<char> = inner.trim().chars().collect();
    };
}

macro_rules! read_vec {
    ($()out:ident as $()type:ty) => {
        let mut inner = String::new();
        std::io::stdin().read_line(&mut inner).unwrap();
        let mut $()out = inner
            .trim()
            .split_whitespace()
            .map(|s| s.parse::<$()type>().unwrap())
            .collect::<Vec<$()type>>();
    };
}

macro_rules! min {
    ($()x: expr) => ($()x);
    ($()x: expr, $()($()z: expr),+) => (::std::cmp::min($()x, min!($()($()z),*)));
}

macro_rules! max {
    ($()x: expr) => ($()x);
    ($()x: expr, $()($()z: expr),+) => (::std::cmp::max($()x, max!($()($()z),*)));
}

fn solve() {
    // Solution
}

fn main() {
    read!(t as usize);
    for _ in 0..t {
        solve();
    }
}
