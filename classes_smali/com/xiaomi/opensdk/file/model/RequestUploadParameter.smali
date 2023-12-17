.class public Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;
.super Ljava/lang/Object;
.source "RequestUploadParameter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/Parameter;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestUploadParameter"


# instance fields
.field private mAwsString:Ljava/lang/String;

.field private mFileMimeType:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileSHA1:Ljava/lang/String;

.field private mFileSize:J

.field private mKssString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mAwsString:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    .line 9
    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 10
    iput-object p6, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAwsString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mAwsString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileMimeType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSHA1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 3
    return-wide v0
.end method

.method public getKssString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setFileMimeType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

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
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    iget-object v2, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    .line 10
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v2, "kss"

    .line 15
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    .line 20
    const-string v2, "filename"

    .line 22
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-wide v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    .line 27
    const-string v3, "size"

    .line 29
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    .line 34
    const-string v2, "sha1"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    .line 41
    const-string v2, "mimeType"

    .line 43
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-object v0
.end method
