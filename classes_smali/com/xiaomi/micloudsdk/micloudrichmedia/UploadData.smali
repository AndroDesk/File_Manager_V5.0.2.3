.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.source "UploadData.java"


# instance fields
.field private mData:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    if-eqz p1, :cond_1b

    .line 6
    array-length p2, p1

    .line 7
    if-eqz p2, :cond_1b

    .line 9
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    .line 11
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getDataSha1Digest([B)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    .line 17
    if-eqz p1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/io/IOException;

    .line 22
    const-string p2, "Calculate file sha-1 digest error"

    .line 24
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string p2, "The data to be uploaded should not be null"

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method


# virtual methods
.method public getData(I)[B
    .registers 6

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_2d

    .line 9
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-ge p1, v0, :cond_14

    .line 18
    new-array p1, p1, [B

    .line 20
    goto :goto_1d

    .line 21
    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    .line 24
    move-result p1

    .line 25
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 27
    sub-int/2addr p1, v0

    .line 28
    new-array p1, p1, [B

    .line 30
    :goto_1d
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    .line 32
    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 34
    const/4 v2, 0x0

    .line 35
    array-length v3, p1

    .line 36
    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 41
    array-length v1, p1

    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 45
    return-object p1

    .line 46
    :cond_2d
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public getLength()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
