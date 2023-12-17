.class public Lcom/micloud/midrive/infos/SyncLocalFileInfo;
.super Ljava/lang/Object;
.source "SyncLocalFileInfo.java"


# instance fields
.field public final localVersion:J

.field private modifyTime:J

.field private name:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private sha1:Ljava/lang/String;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    iput-wide p6, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    iput-object p8, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    iput-wide p9, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    return-void
.end method


# virtual methods
.method public getModifyTime()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    return-wide v0
.end method

.method public setModifyTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "SyncLocalFileInfo{parentId=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", path=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    const-string v3, ", name=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    const-string v3, ", size="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sha1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    const-string v3, ", localVersion="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
