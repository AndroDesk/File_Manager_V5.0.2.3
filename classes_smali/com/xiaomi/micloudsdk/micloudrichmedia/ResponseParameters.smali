.class Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;
.super Ljava/lang/Object;
.source "ResponseParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters$StorageType;
    }
.end annotation


# static fields
.field public static final CODE_FILE_TOO_LARGE:I

.field public static final CODE_INVALID_POSITION:I

.field public static final CODE_MISMATCH_DIGEST:I

.field public static final CODE_MISSING_TMPID:I

.field public static final CODE_PARAMETER_ERROR:I

.field public static final CODE_SUCCESS:I

.field public static final CODE_WRITE_CONFLICT:I

.field public static final TAG_CODE:Ljava/lang/String; = "code"

.field public static final TAG_DATA:Ljava/lang/String; = "data"

.field public static final TAG_DATA_CKEY:Ljava/lang/String; = "ckey"

.field public static final TAG_DATA_DOWNLOADURL:Ljava/lang/String; = "downloadurl"

.field public static final TAG_DATA_EXPIRE_AT:Ljava/lang/String; = "expireAt"

.field public static final TAG_DATA_FILEID:Ljava/lang/String; = "fileId"

.field public static final TAG_DATA_HOSTING_SERVER:Ljava/lang/String; = "_hostingserver"

.field public static final TAG_DATA_SHA1:Ljava/lang/String; = "fileSha1"

.field public static final TAG_DATA_SHAREID:Ljava/lang/String; = "shareId"

.field public static final TAG_DATA_TEMPURL:Ljava/lang/String; = "tmpUrl"

.field public static final TAG_DATA_TMPID:Ljava/lang/String; = "tmpid"

.field public static final TAG_DES:Ljava/lang/String; = "description"

.field public static final TAG_REASON:Ljava/lang/String; = "reason"

.field public static final TAG_RESULT:Ljava/lang/String; = "result"


# instance fields
.field public mCode:I

.field public mData:Lorg/json/JSONObject;

.field public mDescription:Ljava/lang/String;

.field public mReason:Ljava/lang/String;

.field public mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x81512

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_FILE_TOO_LARGE:I

    const v0, 0x81515

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_INVALID_POSITION:I

    const v0, 0x81517

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_MISMATCH_DIGEST:I

    const v0, 0x81513

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_MISSING_TMPID:I

    const v0, 0x90a8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_PARAMETER_ERROR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_SUCCESS:I

    const v0, 0x81514

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->CODE_WRITE_CONFLICT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The response json string is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;-><init>()V

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    const-string v1, "result"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mResult:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    const-string v1, "reason"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mReason:Ljava/lang/String;

    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    if-nez v1, :cond_48

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    :cond_48
    return-object v0
.end method
