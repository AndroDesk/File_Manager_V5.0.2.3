.class public Lcom/xiaomi/opensdk/file/model/DownloadParameter;
.super Ljava/lang/Object;
.source "DownloadParameter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/Parameter;


# instance fields
.field private mAwsDownloadString:Ljava/lang/String;

.field private mKssDownloadString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mKssDownloadString:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mAwsDownloadString:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getAwsDownloadString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mAwsDownloadString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getKssDownloadString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mKssDownloadString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setAwsDownloadString(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mAwsDownloadString:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setKssDownloadString(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mKssDownloadString:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/DownloadParameter;->mKssDownloadString:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    return-object v0
.end method
