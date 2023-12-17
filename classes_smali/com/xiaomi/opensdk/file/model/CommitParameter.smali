.class public Lcom/xiaomi/opensdk/file/model/CommitParameter;
.super Ljava/lang/Object;
.source "CommitParameter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/Parameter;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommitParameter"


# instance fields
.field private mAwsString:Ljava/lang/String;

.field private mFileSHA1:Ljava/lang/String;

.field private mFileSize:J

.field private mKssString:Ljava/lang/String;

.field private mUploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mAwsString:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSHA1:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    return-void
.end method


# virtual methods
.method public getAwsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mAwsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSHA1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSHA1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 3
    return-wide v0
.end method

.method public getKssString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setAwsString(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mAwsString:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileSHA1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSHA1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFileSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 3
    return-void
.end method

.method public setKssString(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 8
    if-eqz v1, :cond_15

    .line 10
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mKssString:Ljava/lang/String;

    .line 14
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v2, "kss"

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mUploadId:Ljava/lang/String;

    .line 24
    const-string v2, "uploadId"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-wide v1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSize:J

    .line 31
    const-string v3, "size"

    .line 33
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/CommitParameter;->mFileSHA1:Ljava/lang/String;

    .line 38
    const-string v2, "sha1"

    .line 40
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    return-object v0
.end method
