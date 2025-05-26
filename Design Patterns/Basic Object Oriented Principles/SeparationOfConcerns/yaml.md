### ❌ **Wrong Way** (All-in-one script)

```bash
#!/bin/bash
echo "Building app..."
docker build -t myapp .

echo "Running tests..."
pytest

echo "Deploying to prod..."
kubectl apply -f k8s/prod.yaml
```

**😬 Issues:**

- Build, test, and deploy are all jumbled together.
- Hard to reuse, hard to debug, risky in production.

---

### ✅ **Right Way** (Separated concerns)

**build.sh**

```bash
#!/bin/bash
docker build -t myapp .
```

**test.sh**

```bash
#!/bin/bash
pytest
```

**deploy.sh**

```bash
#!/bin/bash
kubectl apply -f k8s/prod.yaml
```

**ci_pipeline.sh**

```bash
#!/bin/bash
./build.sh
./test.sh
./deploy.sh
```

**⚡ Benefits:**

- Each script does _one thing only_.
- You can run/test parts independently.
