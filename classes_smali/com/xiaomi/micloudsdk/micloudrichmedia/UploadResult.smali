.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final expireAt:J

.field public final fileId:Ljava/lang/String;

.field public final shareId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fileId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->shareId:Ljava/lang/String;

    .line 8
    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->expireAt:J

    .line 10
    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->downloadUrl:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 9

    .line 1
    const-string v0, "fileId"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v3

    .line 8
    const-string v0, "shareId"

    .line 10
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v4

    .line 14
    const-string v0, "downloadurl"

    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v7

    .line 20
    const-string v0, "expireAt"

    .line 22
    const-wide/16 v5, 0x0

    .line 24
    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 27
    move-result-wide v5

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_29

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_28

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    return-object v1

    .line 42
    :cond_29
    :goto_29
    new-instance p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    .line 44
    move-object v2, p0

    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 48
    return-object p0
.end method
