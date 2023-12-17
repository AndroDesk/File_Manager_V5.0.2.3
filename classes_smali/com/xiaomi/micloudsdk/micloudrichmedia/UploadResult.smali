.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final expireAt:J

.field public final fileId:Ljava/lang/String;

.field public final shareId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->shareId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->expireAt:J

    iput-object p5, p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;
    .registers 9

    const-string v0, "fileId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "shareId"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "downloadurl"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "expireAt"

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    return-object v1

    :cond_29
    :goto_29
    new-instance p0, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/micloudsdk/micloudrichmedia/UploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method
