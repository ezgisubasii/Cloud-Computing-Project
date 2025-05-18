# Python 3.9 tabanlı resmi imajdan başla
FROM python:3.9-slim

# Gerekli sistem paketlerini yükle
RUN apt-get update && apt-get install -y gcc

# Çalışma dizinini oluştur
WORKDIR /app

# Gerekli dosyaları kopyala
COPY requirements.txt requirements.txt
COPY app.py app.py

# Gerekli Python paketlerini yükle
RUN pip install --no-cache-dir -r requirements.txt

# Uygulamayı başlat
CMD ["python", "app.py"]

