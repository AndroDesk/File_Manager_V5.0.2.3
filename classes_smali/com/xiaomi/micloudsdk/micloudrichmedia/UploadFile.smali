.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.source "UploadFile.java"


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_1c

    .line 10
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFilePath:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getFileSha1Digest(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    .line 18
    if-eqz p1, :cond_14

    .line 20
    return-void

    .line 21
    :cond_14
    new-instance p1, Ljava/io/IOException;

    .line 23
    const-string p2, "Calculate file sha-1 digest error"

    .line 25
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p2, "The upload file parameters should not be null"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 11
    return-void
.end method

.method public getData(I)[B
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    if-eqz v0, :cond_38

    .line 5
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 11
    move-result-wide v3

    .line 12
    cmp-long v0, v1, v3

    .line 14
    if-gez v0, :cond_38

    .line 16
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->getLength()I

    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 22
    sub-int/2addr v0, v1

    .line 23
    if-ge p1, v0, :cond_1b

    .line 25
    new-array p1, p1, [B

    .line 27
    goto :goto_24

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->getLength()I

    .line 31
    move-result p1

    .line 32
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 34
    sub-int/2addr p1, v0

    .line 35
    new-array p1, p1, [B

    .line 37
    :goto_24
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 39
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 41
    int-to-long v1, v1

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 47
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 50
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 52
    array-length v1, p1

    .line 53
    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 56
    return-object p1

    .line 57
    :cond_38
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method public getLength()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_b

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 10
    move-result-wide v0

    .line 11
    long-to-int v0, v0

    .line 12
    :goto_b
    return v0
.end method

.method public open()V
    .registers 4

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFilePath:Ljava/lang/String;

    .line 5
    const-string v2, "r"

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    .line 12
    return-void
.end method
