.class public Lcom/xiaomi/opensdk/file/model/UploadContext;
.super Ljava/lang/Object;
.source "UploadContext.java"


# instance fields
.field private isNeedRequestUpload:Z

.field private mCommitString:Ljava/lang/String;

.field private mKssString:Ljava/lang/String;

.field private final mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

.field private final mLocalFile:Lr1/d;

.field private mMaxChunkSize:J

.field private mSha1:Ljava/lang/String;

.field private final mStopper:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

.field private mUploadID:Ljava/lang/String;

.field private mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;)V
    .registers 9

    const/4 v3, 0x0

    const-wide/32 v4, 0x400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;J)V

    return-void
.end method

.method public constructor <init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;J)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;J)V

    return-void
.end method

.method public constructor <init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V
    .registers 10

    const-wide/32 v4, 0x400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/file/model/UploadContext;-><init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;J)V

    return-void
.end method

.method public constructor <init>(Lr1/d;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Lr1/d;

    iput-object p2, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    iput-object p3, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mStopper:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    iput-wide p4, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mMaxChunkSize:J

    return-void
.end method


# virtual methods
.method public getCommitString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mCommitString:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Lr1/d;

    iget-object v0, v0, Lr1/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Lr1/d;

    iget-wide v0, v0, Lr1/d;->c:J

    return-wide v0
.end method

.method public getKssString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mKssString:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mListener:Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;

    return-object v0
.end method

.method public getLocalFile()Lr1/d;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mLocalFile:Lr1/d;

    return-object v0
.end method

.method public getMaxChunkSize()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mMaxChunkSize:J

    return-wide v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mSha1:Ljava/lang/String;

    return-object v0
.end method

.method public getStopper()Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mStopper:Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;

    return-object v0
.end method

.method public getUploadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadID:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadParam()Lcom/xiaomi/opensdk/file/model/UploadParameter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;

    return-object v0
.end method

.method public isNeedRequestUpload()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload:Z

    return v0
.end method

.method public setCommitString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mCommitString:Ljava/lang/String;

    return-void
.end method

.method public setKssString(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mKssString:Ljava/lang/String;

    return-void
.end method

.method public setMaxChunkSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mMaxChunkSize:J

    return-void
.end method

.method public setNeedRequestUpload(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->isNeedRequestUpload:Z

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mSha1:Ljava/lang/String;

    return-void
.end method

.method public setUploadId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadID:Ljava/lang/String;

    return-void
.end method

.method public setUploadParam(Lcom/xiaomi/opensdk/file/model/UploadParameter;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/file/model/UploadContext;->mUploadParam:Lcom/xiaomi/opensdk/file/model/UploadParameter;

    return-void
.end method
