.class public abstract Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;
.super Ljava/lang/Object;
.source "UploadEntity.java"


# static fields
.field private static final EXT_MAX_LEN:I


# instance fields
.field public mExt:Ljava/lang/String;

.field public mHexDigest:Ljava/lang/String;

.field public mHostingServer:Ljava/lang/String;

.field public mOffset:I

.field public mTempId:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->EXT_MAX_LEN:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->isSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_28

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mExt:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const-string p2, "The ext\'s %s length should not exceeds %d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "The type %s is not supported"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The upload file parameters should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public getHexDigest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHexDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getHostingServer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLength()I
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    return v0
.end method

.method public getTempId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstChunk()Z
    .registers 2

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLastChunk(I)Z
    .registers 4

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->getLength()I

    move-result p1

    if-lt v0, p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

.method public open()V
    .registers 1

    return-void
.end method

.method public resetOffset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mOffset:I

    return-void
.end method

.method public setHostingServer(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mHostingServer:Ljava/lang/String;

    return-void
.end method

.method public setTempId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadEntity;->mTempId:Ljava/lang/String;

    return-void
.end method
