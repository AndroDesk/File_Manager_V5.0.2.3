.class public Lcom/micloud/midrive/infos/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# instance fields
.field public final createTime:J

.field public final fileId:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;

.field public final filePath:Ljava/lang/String;

.field public final fileSize:J

.field public final modifyTime:J

.field public final parentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->parentId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->filePath:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileName:Ljava/lang/String;

    .line 12
    iput-wide p5, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileSize:J

    .line 14
    iput-wide p7, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->modifyTime:J

    .line 16
    iput-wide p9, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->createTime:J

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "UploadFileInfo{fileId=\'"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileId:Ljava/lang/String;

    .line 9
    const/16 v2, 0x27

    .line 11
    const-string v3, ", parentId=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->parentId:Ljava/lang/String;

    .line 18
    const-string v3, ", filePath=\'"

    .line 20
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->filePath:Ljava/lang/String;

    .line 25
    const-string v3, ", fileName=\'"

    .line 27
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileName:Ljava/lang/String;

    .line 32
    const-string v3, ", fileSize="

    .line 34
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 37
    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileSize:J

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", modifyTime="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->modifyTime:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", createTime="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->createTime:J

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
