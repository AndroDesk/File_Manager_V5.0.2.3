.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.source "UploadFile.java"


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1c

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getFileSha1Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    if-eqz p1, :cond_14

    return-void

    :cond_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Calculate file sha-1 digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The upload file parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public getData(I)[B
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_38

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    int-to-long v1, v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_38

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->getLength()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1b

    new-array p1, p1, [B

    goto :goto_24

    :cond_1b
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->getLength()I

    move-result p1

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    :goto_24
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    return-object p1

    :cond_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLength()I
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_b
    return v0
.end method

.method public open()V
    .registers 4

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFilePath:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadFile;->mFile:Ljava/io/RandomAccessFile;

    return-void
.end method
