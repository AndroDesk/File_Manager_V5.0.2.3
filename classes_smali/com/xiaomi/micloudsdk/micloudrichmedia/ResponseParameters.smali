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
.field public static final CODE_FILE_TOO_LARGE:I = 0x13884

.field public static final CODE_INVALID_POSITION:I = 0x13883

.field public static final CODE_MISMATCH_DIGEST:I = 0x13881

.field public static final CODE_MISSING_TMPID:I = 0x13885

.field public static final CODE_PARAMETER_ERROR:I = 0x2718

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_WRITE_CONFLICT:I = 0x13882

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
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static parseResponse(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "The response json string is:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaManager2;->log(Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;

    .line 23
    invoke-direct {v0}, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;-><init>()V

    .line 26
    const-string v1, "code"

    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    iput v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    .line 35
    const-string v1, "result"

    .line 37
    const-string v2, ""

    .line 39
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mResult:Ljava/lang/String;

    .line 45
    const-string v1, "description"

    .line 47
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mDescription:Ljava/lang/String;

    .line 53
    const-string v1, "reason"

    .line 55
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mReason:Ljava/lang/String;

    .line 61
    iget v1, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mCode:I

    .line 63
    if-nez v1, :cond_48

    .line 65
    const-string v1, "data"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    move-result-object p0

    .line 71
    iput-object p0, v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/ResponseParameters;->mData:Lorg/json/JSONObject;

    .line 73
    :cond_48
    return-object v0
.end method
