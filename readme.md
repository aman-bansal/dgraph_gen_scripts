# What's Codelingo?
Codelingo's is an online linter with customizable workflows to define best code practices. You can find more about codelingo here. In short codelingo can help us with:
1. Enforcing all the documented code practices.
2. Full scan of all previous commits to analyze possible tech debts and in some cases possible bugs.

# Motivation
The motivation to integrate codelingo is based on the idea that "Documentation and discussions loses its value over time". 
Documenting good code practices does prove useful in initial stage but with time, we need a tool that can enforce these practices. And with the help of Codelingo we will try to enforce these practices in real time.

# How Codelingo works? 
Let's try to understand how codelingo works using their own terminology:
1. Rules: 
Codelingo generates rules for bad code practices. For example:
```
m := make(map[string]string)
val := m["key"] //bad code practice. should look for val, ok := m["key"]
```
With the help of codelingo, we will generate rules to capture instances where bad code practices has been followed. For example the above mentioned rule can be called "wrong way to get value from a map".

2. CodeLingo Query (CLQ): Once rules been captured, we will define queries that will detect bad code practices. 
In simple terms, a CLQ will traverse the syntax tree of your code and try to find the matching instances for each rule.

3. Once found, it will generate review comments over the PR. In this way we can automate some standard practices without involving devs.

# How Codelingo team can help us?
https://docs.codelingo.io/
In a recent talk with codelingo folks, they are keen to help us out with writing queries for each captured rule. Though they have documentation, but its lacking in terms of working examples and other useful materials to help us all get started.

# I am excited. How can I be part of this?
As a first step to successfully integrate Codelingo, we need to capture rules first. There are two ways to capture rules:
1. Select a code piece over a PR and call Codelingo bot via ```@CodeLingoBot capture bad code practice do this```. This will automatically generates a rule and we can work with the codelingo team (if necessary) to work on query part.
2. A plugin is available for people using Visual Studio. Just search for Codelingo plugin and install it. It has decent documentation to help you get started. But do let me know if you face any issues.
If possible please provide the good and bad code example so that it will be helpful for us to define the needed queries.