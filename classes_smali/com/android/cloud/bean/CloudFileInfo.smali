.class public Lcom/android/cloud/bean/CloudFileInfo;
.super Lcom/android/fileexplorer/model/FileInfo;
.source "CloudFileInfo.java"


# instance fields
.field private cloudId:Ljava/lang/String;

.field private cloudLocalFileId:Ljava/lang/String;

.field private coverUrl:Ljava/lang/String;

.field private createTime:Ljava/lang/Long;

.field private label:Ljava/lang/String;

.field private localCreateTime:Ljava/lang/Long;

.field private localModifyTime:Ljava/lang/Long;

.field private parentId:Ljava/lang/String;

.field private privacyStatus:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private transferId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloudId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->cloudId:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudLocalFileId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->cloudLocalFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->createTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCreateTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->localCreateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocalModifyTime()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->localModifyTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->privacyStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->transferId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/bean/CloudFileInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCloudId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->cloudId:Ljava/lang/String;

    return-void
.end method

.method public setCloudLocalFileId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->cloudLocalFileId:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->createTime:Ljava/lang/Long;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public setLocalCreateTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->localCreateTime:Ljava/lang/Long;

    return-void
.end method

.method public setLocalModifyTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->localModifyTime:Ljava/lang/Long;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->parentId:Ljava/lang/String;

    return-void
.end method

.method public setPrivacyStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->privacyStatus:Ljava/lang/String;

    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->revision:Ljava/lang/String;

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->sha1:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setTransferId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->transferId:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/bean/CloudFileInfo;->type:Ljava/lang/String;

    return-void
.end method
