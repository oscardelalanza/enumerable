# Enumerable

##### Advanced Building Blocks - Enumerables

> This is my own implementation of Ruby's enumerable methods. The goal of the project is to get a deep understanding of how basic enumerable methods work.


![screenshot](screenshots/enum.png)

You can find the original description of this project here: 
[The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/advanced-building-blocks)

## Built With

- Ruby

## Getting Started

This project consists of the implementation of the following methods of `Enumerable` class
- `each`
- `each_with_index`
- `select`
- `all?`
- `any?`
- `none?`
- `count`
- `map`
- `inject`

> To get a local copy up and running follow these simple example steps.
 
### Prerequisites

- `Git`
- `Ruby`

### Setup

To clone the project in your local environment do the following

- Open a new `terminal` window and navigate to the directory where the project will be stored
- Run the command `git clone git@github.com:oscardelalanza/enumerable.git`
- Run the command `cd enumerable` to enter the project directory

### Installation

- Copy and paste `enumerable.rb` file to your current project. Then import the `Enumerable` module in your main class with 
`require_relative 'enumerable'`.


### Usage

For a better understanding of how enumerable module works, check the following `IRB` examples of usage.

- Importing the `Enumerable` module
![import](screenshots/import.png)

- `my_each` calls the given block once for each element in the array
![my_each](screenshots/my_each.png)

- `my_each_with_index` calls the given block once for each element and its index in the array
![my_each_index](screenshots/my-each-index.png)  

- `my_select` returns an array with all the values that a given block returns `true`
![my_select](screenshots/my-select.png)

- `my_all` returns `true` if all elements evaluated in a given block return true
![my_all](screenshots/my-all.png) 

You can follow the examples to apply the remaining methods. For a deeper understanding check this link 
[Enumerable](https://ruby-doc.org/core-2.7.1/Enumerable.html)

### Run tests

- This project does not contain tests

### Deployment

- Not needed

## Authors

👤 **Oscar De La Lanza**

- Github: [@oscardelalanza](https://github.com/oscardelalanza)
- Twitter: [@twitterhandle](https://twitter.com/oscardelalanza)
- Linkedin: [Oscar De La Lanza](https://linkedin.com/in/oscardelalanza/)
- Email: oscardelalanza@gmail.com

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
