.class public abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.super Ljava/lang/Object;
.source "UploadEntity.java"


# static fields
.field private static final EXT_MAX_LEN:I = 0x5


# instance fields
.field public mExt:Ljava/lang/String;

.field public mHexDigest:Ljava/lang/String;

.field public mHostingServer:Ljava/lang/String;

.field public mOffset:I

.field public mTempId:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_4f

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_4f

    .line 16
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isSupported(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_3f

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x5

    .line 29
    if-gt v0, v3, :cond_28

    .line 31
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mExt:Ljava/lang/String;

    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    .line 40
    return-void

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    aput-object p2, v0, v1

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object p2

    .line 52
    aput-object p2, v0, v2

    .line 54
    const-string p2, "The ext\'s %s length should not exceeds %d"

    .line 56
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 64
    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 66
    new-array v0, v2, [Ljava/lang/Object;

    .line 68
    aput-object p1, v0, v1

    .line 70
    const-string p1, "The type %s is not supported"

    .line 72
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p2

    .line 80
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 82
    const-string p2, "The upload file parameters should not be null"

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public abstract getData(I)[B
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mExt:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHexDigest()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHostingServer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public abstract getLength()I
.end method

.method public getOffset()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 3
    return v0
.end method

.method public getTempId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isFirstChunk()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isLastChunk(I)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 3
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_13

    .line 9
    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 11
    add-int/2addr v0, p1

    .line 12
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    .line 15
    move-result p1

    .line 16
    if-lt v0, p1, :cond_13

    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    :goto_14
    return p1
.end method

.method public open()V
    .registers 1

    return-void
.end method

.method public resetOffset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    .line 4
    return-void
.end method

.method public setHostingServer(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTempId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    .line 3
    return-void
.end method
