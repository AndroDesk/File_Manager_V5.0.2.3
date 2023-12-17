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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mAwsString:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    iput-object p6, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAwsString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mAwsString:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSHA1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    return-wide v0
.end method

.method public getKssString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    return-object v0
.end method

.method public setFileMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mKssString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "kss"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileName:Ljava/lang/String;

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSize:J

    const-string v3, "size"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileSHA1:Ljava/lang/String;

    const-string v2, "sha1"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->mFileMimeType:Ljava/lang/String;

    const-string v2, "mimeType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
