FROM python:onbuild
ENV PORT 8080
EXPOSE 8080
RUN python -m textblob.download_corpora
ENTRYPOINT ["python"]
CMD ["app.py"]
