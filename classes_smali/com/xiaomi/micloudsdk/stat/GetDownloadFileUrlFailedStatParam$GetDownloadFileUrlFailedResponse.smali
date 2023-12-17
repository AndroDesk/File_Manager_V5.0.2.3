.class Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;
.super Ljava/lang/Object;
.source "GetDownloadFileUrlFailedStatParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDownloadFileUrlFailedResponse"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final reason:Ljava/lang/String;

.field public final responseCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->responseCode:I

    .line 6
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->description:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;->reason:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static createGetDownloadFileUrlFailedResponse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;
    .registers 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, ""

    .line 4
    if-nez p0, :cond_6

    .line 6
    move-object p0, v1

    .line 7
    :cond_6
    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;

    .line 14
    const-string v3, "code"

    .line 16
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    move-result v3

    .line 20
    const-string v4, "description"

    .line 22
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    const-string v5, "reason"

    .line 28
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0, v3, v4, v2}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_22} :catch_23

    .line 35
    return-object p0

    .line 36
    :catch_23
    move-exception p0

    .line 37
    const-string v2, "GetDownloadFileUrlFailedStatParam"

    .line 39
    const-string v3, "createGetDownloadFileUrlFailedResponse: "

    .line 41
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    new-instance p0, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;

    .line 46
    invoke-direct {p0, v0, v1, v1}, Lcom/xiaomi/micloudsdk/stat/GetDownloadFileUrlFailedStatParam$GetDownloadFileUrlFailedResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object p0
.end method
