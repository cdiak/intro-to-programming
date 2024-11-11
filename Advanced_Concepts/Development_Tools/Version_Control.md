## Version Control

- **Version Control** is a system that helps developers manage changes to source code, documents, and other collections of information over time. 
- It allows multiple people to collaborate on a project by tracking revisions, enabling developers to work on separate tasks, merge their changes, and keep a historical record of modifications.

### Key Idea:
- **Version Control** systems store **snapshots** of code or documents at different points in time, allowing users to revert to previous versions, compare changes, and collaborate effectively on large projects.
- Each change made to the project is tracked, along with who made the change, why it was made, and what was modified.

### Types of Version Control:

1. **Local Version Control**:
   - Stores versions of files on a developer's local machine.
   - Simple but limited because it lacks collaboration features and centralized access.
   - **Example**: A developer manually keeps copies of files in different directories (e.g., `file_v1`, `file_v2`), but this approach doesn't scale for team projects.

2. **Centralized Version Control**:
   - In **Centralized Version Control** systems, all project files are stored on a central server.
   - Developers pull (download) the latest version of the project and make changes on their local machine, then push (upload) their changes back to the central repository.
   - **Example**: **Subversion (SVN)** and **CVS** are centralized systems.
   - **Advantages**: Easy to set up and manage.
   - **Disadvantages**: If the central server goes down, collaboration stops, and the system is less resilient to data loss.

3. **Distributed Version Control**:
   - In **Distributed Version Control** systems, each developer has a complete copy of the repository, including the entire history of the project.
   - Developers can work offline and commit changes locally, then later push and pull changes to a shared remote repository.
   - **Example**: **Git** and **Mercurial** are popular distributed version control systems.
   - **Advantages**: More flexible, faster collaboration, and more robust (no single point of failure).
   - **Disadvantages**: Slightly more complex to set up than centralized systems.

### Popular Version Control Systems:

1. **Git**:
   - **Git** is the most widely used distributed version control system.
   - It tracks changes by creating **commits**, which are snapshots of the project at specific points.
   - **GitHub**, **GitLab**, and **Bitbucket** are platforms that host Git repositories for collaboration.

   - **Example Workflow in Git**:
     1. **Clone** a repository:
        ```bash
        git clone https://github.com/user/project.git
        ```
     2. Make changes and **commit**:
        ```bash
        git add .
        git commit -m "Added new feature"
        ```
     3. **Push** changes to a remote repository:
        ```bash
        git push origin main
        ```

2. **Subversion (SVN)**:
   - **SVN** is a centralized version control system that allows developers to check out a project, make changes, and commit them back to a central repository.
   - While less flexible than Git, SVN is still used in some organizations for its simplicity.

3. **Mercurial**:
   - Similar to Git, **Mercurial** is a distributed version control system that is user-friendly and scalable for both small and large projects.
   - Though less popular than Git, it’s known for its simplicity and performance in large repositories.

### Common Concepts in Version Control:

1. **Repository**:
   - A **repository** (or **repo**) is the storage location where all files, history, and version information are stored.
   - It can be hosted locally or on a platform like **GitHub**.

2. **Commit**:
   - A **commit** represents a snapshot of the project at a particular time. It captures changes made to the files and records the author, time, and commit message.
   - **Example**: In Git, a commit might contain a message like "Fixed login bug" and store all changes related to that fix.

3. **Branching**:
   - A **branch** is a parallel version of the project where changes can be made without affecting the main version of the code.
   - **Branches** allow developers to work on features, bugs, or experiments independently.
   - **Example**: In Git, you might create a new branch for a feature:
     ```bash
     git checkout -b new-feature
     ```

4. **Merging**:
   - **Merging** is the process of integrating changes from one branch into another. 
   - After completing work on a branch, a developer can merge it back into the main codebase.
   - **Example**: In Git, to merge the `new-feature` branch into the `main` branch:
     ```bash
     git checkout main
     git merge new-feature
     ```

5. **Pull Requests (PRs)**:
   - A **Pull Request** is a feature in platforms like GitHub that lets developers propose changes from one branch to another.
   - It allows code to be reviewed before being merged into the main branch, ensuring quality control.
   - **Example**: In **GitHub**, a pull request is created for team members to review the changes made in a feature branch.

6. **Conflict**:
   - A **merge conflict** occurs when changes in two branches cannot be automatically merged due to overlapping modifications in the same part of the code.
   - Conflicts must be resolved manually by the developer before proceeding with the merge.

7. **Tagging**:
   - **Tags** mark specific points in the project’s history, often used to denote **releases** or **milestones**.
   - **Example**: In Git, you can create a tag for a release:
     ```bash
     git tag v1.0.0
     ```

### Version Control in Collaborative Development:

1. **Collaboration**:
   - Version control allows multiple developers to work on the same project simultaneously by using **branches** to isolate work and merging changes to integrate features.
   - Platforms like **GitHub** and **GitLab** offer additional features for collaboration, such as code reviews, issues, and project management tools.

2. **Tracking Changes**:
   - With version control, every modification to the project is recorded, allowing developers to track changes over time, understand why certain decisions were made, and roll back if necessary.

3. **Continuous Integration (CI)**:
   - Version control integrates with **CI/CD** pipelines, automating the process of testing, building, and deploying software whenever changes are committed or merged.
   - Tools like **Jenkins**, **CircleCI**, and **TravisCI** rely on version control to trigger automated builds and tests.

### Real-World Analogy:
- Version control is like a **time machine** for code:
   - It lets you travel back to previous versions of your project, see who made changes, why they were made, and what was changed. You can also create alternate timelines (branches) to try new things without affecting the main timeline.

### Related Concepts:
- [[Git]]: The most popular distributed version control system, used for tracking changes in code.
- [[Branching]]: Creating parallel versions of a project to work on features or fixes.
- [[Pull Request]]: A request to merge changes from one branch into another, typically used in collaboration workflows.

**Version Control** is fundamental to modern software development, enabling teams to collaborate efficiently, track changes over time, and maintain high-quality code through tools like branching, merging, and versioning. Whether you're working on a small project or a large team collaboration, version control is an essential practice for managing software development.