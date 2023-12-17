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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->parentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileSize:J

    iput-wide p7, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->modifyTime:J

    iput-wide p9, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->createTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "UploadFileInfo{fileId=\'"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", parentId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->parentId:Ljava/lang/String;

    const-string v3, ", filePath=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->filePath:Ljava/lang/String;

    const-string v3, ", fileName=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileName:Ljava/lang/String;

    const-string v3, ", fileSize="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->fileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->modifyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/micloud/midrive/infos/UploadFileInfo;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
