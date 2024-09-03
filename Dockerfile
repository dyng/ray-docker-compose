FROM python:3.9.7-slim

RUN pip install --no-cache-dir -U 'ray[default]'==2.34.0

CMD ["bash", "-c", "ray start --head --num-cpus 1 --dashboard-host 0.0.0.0 --include-dashboard true --block"]
