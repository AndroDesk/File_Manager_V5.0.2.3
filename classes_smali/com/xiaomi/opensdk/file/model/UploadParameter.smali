.class public Lcom/xiaomi/opensdk/file/model/UploadParameter;
.super Ljava/lang/Object;
.source "UploadParameter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/Parameter;


# instance fields
.field private mAwsUploadString:Ljava/lang/String;

.field private mKssUploadString:Ljava/lang/String;

.field private mUploadId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAwsUploadString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mAwsUploadString:Ljava/lang/String;

    return-object v0
.end method

.method public getKssUploadString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mKssUploadString:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mUploadId:Ljava/lang/String;

    return-object v0
.end method

.method public setAwsUploadString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mAwsUploadString:Ljava/lang/String;

    return-void
.end method

.method public setKssUploadString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mKssUploadString:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mUploadId:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/file/model/UploadParameter;->mKssUploadString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method