## Deadlock

- **Deadlock** is a situation in computer systems where a set of processes or threads become stuck in a state where each is waiting for resources held by the others, creating a cycle of dependencies that prevent any of them from proceeding. This results in a situation where no progress can be made and the system essentially halts.

### Key Idea:
- **Deadlock** occurs in a system when processes or threads are unable to proceed because they are each waiting for resources that are held by others in the same set. This situation creates a circular chain of dependencies, leading to a standstill where no process can make progress.

---

### Conditions for Deadlock:

1. **Mutual Exclusion**:
   - At least one resource must be held in a non-shareable mode, meaning only one process or thread can use it at a time.

2. **Hold and Wait**:
   - A process or thread is holding at least one resource and is waiting to acquire additional resources that are currently held by other processes or threads.

3. **No Preemption**:
   - Resources cannot be forcibly taken away from a process or thread holding them; they must be released voluntarily.

4. **Circular Wait**:
   - There is a circular chain of processes or threads where each is waiting for a resource that is held by the next process or thread in the chain.

---

### Deadlock Prevention Strategies:

1. **Resource Allocation Graph (RAG)**:
   - Use a **Resource Allocation Graph** to track resources and their allocations. Deadlock can be detected by analyzing the graph for cycles.

2. **Avoidance Algorithms**:
   - Implement algorithms like **Banker's Algorithm** to allocate resources in a way that avoids deadlock by ensuring that a system never enters an unsafe state.

3. **Detection and Recovery**:
   - Allow deadlock to occur but have mechanisms in place to detect and recover from it, such as killing processes or rolling back to a safe state.

4. **Prevention Techniques**:
   - Design systems to eliminate one or more of the necessary conditions for deadlock, such as ensuring resources can be preempted or avoiding circular wait conditions.

---

### Deadlock Detection and Recovery:

1. **Detection**:
   - Use algorithms like **Wait-for Graph** to detect the presence of cycles, indicating a deadlock. Systems periodically check for deadlocks and take appropriate actions.

2. **Recovery**:
   - **Process Termination**: Kill one or more processes to break the deadlock cycle.
   - **Resource Preemption**: Temporarily take resources from some processes and assign them to others to resolve the deadlock.

---

### Example:

- Imagine a system with two processes, P1 and P2, and two resources, R1 and R2. P1 holds R1 and needs R2 to proceed, while P2 holds R2 and needs R1. Neither process can proceed because each is waiting for the other to release a resource, resulting in a deadlock.

---

### Real-World Analogy:

- **Deadlock** can be compared to a **traffic jam** at an intersection where cars from all directions are waiting to move but are blocked by cars coming from other directions. Each car is waiting for another to move first, causing a complete standstill.

---

### Related Concepts:

- [[Mutual Exclusion]]: The condition that requires resources to be held in a non-shareable mode.
- [[Resource Allocation Graph (RAG)]]: A graphical representation used to track resource allocation and detect deadlocks.
- [[Banker's Algorithm]]: An avoidance algorithm used to allocate resources safely to avoid deadlock.
- [[Deadlock Prevention]]: Strategies to eliminate one or more conditions necessary for deadlock.

**Deadlock** is a critical issue in system design and resource management. Understanding how to prevent, detect, and recover from deadlocks is essential for ensuring the reliability and efficiency of concurrent systems.