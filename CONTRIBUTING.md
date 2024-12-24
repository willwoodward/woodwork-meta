# Contributing to Woodwork

Welcome to woodwork! We’re excited to have you contribute to our project. Below, you’ll find all the information you need to contribute effectively.

Woodwork as a project spans multiple repositories:
- [woodwork-engine](https://github.com/willwoodward/woodwork-engine) - The primary repository for orchestrating the agent components
- [woodwork-language](https://github.com/willwoodward/woodwork-language) - Responsible for the language server and extensions
- [woodwork-website](https://github.com/willwoodward/woodwork-website) - Code for the website

## How to Contribute

### Reporting Issues
All pending bug reports are kept in the [woodwork-meta](https://github.com/willwoodward/woodwork-meta) repo.

If you encounter a bug or inconsistency:
1. Search our [issue tracker](https://github.com/willwoodward/woodwork-meta/issues?q=is%3Aissue+is%3Aopen+label%3ABug) to see if the problem has already been reported.
2. If not, [open a new bug report](https://github.com/willwoodward/woodwork-meta/issues/new?assignees=&labels=Bug&projects=&template=bug-report.md&title=Example+Heading) and follow the instructions provided.

### Proposing Features
All pending feature requests are kept in the [woodwork-meta](https://github.com/willwoodward/woodwork-meta) repo.

If you have an idea for a new feature:
1. Search [feature requests](https://github.com/willwoodward/woodwork-meta/issues?q=is%3Aissue+is%3Aopen+label%3AFeature) to see if the feature has already been suggested.
2. [Submit a feature request](https://github.com/willwoodward/woodwork-meta/issues/new?assignees=&labels=Feature&projects=&template=feature-request.md&title=Example+Heading) and follow the instructions provided.

### Submitting Issues on Repositories
Features and bugs will eventually be moved to the relevant repository. I will document the process that I usually undergo as follows.
1. **Add the Issue**: Create a new issue on the relevant repository with the same name, referencing the bug report or feature suggestion. Follow the relevant template.
2. **Add the Labels**: Add a blue label (task type), a green label (fix or feature) and a purple level to represent the skill level required.
3. **Submit the Issue**

### Contributing Code
1. **Fork the repository**: Click the “Fork” button at the top right of the repo.
2. **Clone your fork**:
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
3. **Create a branch**:
    ```bash
    git checkout -b username/your-feature-name
4. **Make and commit your changes**
5. **Push your branch when you have completed the feature**:
    ```bash
    git push origin username/your-feature-name
6. **Run the tests to ensure they pass**:
    ```bash
    pytest tests/
7. **Run the linter and ensure it passes**:
    ```bash
    ruff check --fix .
8. **Run the formatter**:
    ```bash
    ruff format .
9. **Open a pull request**
    - Click the "Compare & Pull Request" button on your forked repo
    - Add a detailed description of your changes
    - Submit your request for review

### Get Started
To see ongoing goals, take a look at the [roadmap](./ROADMAP.md), and see a list of [Epics](https://github.com/willwoodward/woodwork-meta/issues?q=is%3Aissue+is%3Aopen+label%3AEpic). Each repository will also have issues marked with `good first issue` labels, which provide more guidance. I am more than happy to help you get set up, feel free to reach out!
