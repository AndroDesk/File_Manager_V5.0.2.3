.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;
.super Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.source "UploadData.java"


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1b

    array-length p2, p1

    if-eqz p2, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->getDataSha1Digest([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    if-eqz p1, :cond_13

    return-void

    :cond_13
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Calculate file sha-1 digest error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The data to be uploaded should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getData(I)[B
    .registers 6

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_14

    new-array p1, p1, [B

    goto :goto_1d

    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->getLength()I

    move-result p1

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    :goto_1d
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    iget v1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLength()I
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadData;->mData:[B

    array-length v0, v0

    return v0
.end method
