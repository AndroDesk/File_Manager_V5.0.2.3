.class public Lcom/micloud/midrive/model/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final createTime:J

.field public final fileId:Ljava/lang/String;

.field public final isPrivacy:Z

.field public final localCreateTime:J

.field public final localModifyTime:J

.field private mCoverUrl:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mIsLocal:Z

.field private mTitle:Ljava/lang/String;

.field public final modifyTime:J

.field public final parentId:Ljava/lang/String;

.field public final sha1:Ljava/lang/String;

.field public final size:J

.field public final type:Lcom/micloud/midrive/ui/bean/DriveFileType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/micloud/midrive/model/FileItem;-><init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 23

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->type:Lcom/micloud/midrive/ui/bean/DriveFileType;

    move-object v1, p2

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->parentId:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->size:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->createTime:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->modifyTime:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->localCreateTime:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->localModifyTime:J

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->sha1:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/micloud/midrive/model/FileItem;->isPrivacy:Z

    move-object v1, p4

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    :cond_11
    check-cast p1, Lcom/micloud/midrive/model/FileItem;

    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    iget-object p1, p1, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setIsLocal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "FileItem{type="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->type:Lcom/micloud/midrive/ui/bean/DriveFileType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", size="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->size:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->createTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->modifyTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->localCreateTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localModifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->localModifyTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sha1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->sha1:Ljava/lang/String;

    const-string v3, ", parentId=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->parentId:Ljava/lang/String;

    const-string v3, ", mTitle=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    const-string v3, ", mCoverUrl=\'"

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    const-string v3, ", mIsLocal="

    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
