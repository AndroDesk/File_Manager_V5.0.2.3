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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;J)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    .line 12
    iput-wide p6, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    .line 14
    iput-object p8, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    .line 16
    iput-wide p9, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 18
    return-void
.end method


# virtual methods
.method public getModifyTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    .line 3
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSha1()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    .line 3
    return-wide v0
.end method

.method public setModifyTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSha1(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "SyncLocalFileInfo{parentId=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->parentId:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", path=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->path:Ljava/lang/String;

    .line 18
    const-string v3, ", name=\'"

    .line 20
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->name:Ljava/lang/String;

    .line 25
    const-string v3, ", size="

    .line 27
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 30
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->size:J

    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ", modifyTime="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-wide v3, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->modifyTime:J

    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", sha1=\'"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->sha1:Ljava/lang/String;

    .line 52
    const-string v3, ", localVersion="

    .line 54
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 57
    iget-wide v1, p0, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const/16 v1, 0x7d

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
