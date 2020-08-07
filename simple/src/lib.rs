#[derive(Debug)]
enum Expression {
    Number(i32),
    Add { left: Box<Expression>, right: Box<Expression> },
    Multiply { left: Box<Expression>, right: Box<Expression> },
}

impl Expression::Add {
    fn new(left: Box<Expression>, right: Box<Expression>) -> Box<Expression::Add> {
        Box::new(Expression::Add { left: left, right: right })
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use super::Expression::*;
    #[test]
    fn it_works() {
        println!("hello");
    }
}
