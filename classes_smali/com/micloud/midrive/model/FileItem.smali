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

    .line 1
    invoke-direct/range {v0 .. v19}, Lcom/micloud/midrive/model/FileItem;-><init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/ui/bean/DriveFileType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 23

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->type:Lcom/micloud/midrive/ui/bean/DriveFileType;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->parentId:Ljava/lang/String;

    move-wide v1, p5

    .line 6
    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->size:J

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->createTime:J

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->modifyTime:J

    move-wide v1, p11

    .line 9
    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->localCreateTime:J

    move-wide/from16 v1, p13

    .line 10
    iput-wide v1, v0, Lcom/micloud/midrive/model/FileItem;->localModifyTime:J

    move-object/from16 v1, p18

    .line 11
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->sha1:Ljava/lang/String;

    move/from16 v1, p19

    .line 12
    iput-boolean v1, v0, Lcom/micloud/midrive/model/FileItem;->isPrivacy:Z

    move-object v1, p4

    .line 13
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    move/from16 v1, p17

    .line 16
    iput-boolean v1, v0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-eqz p1, :cond_1c

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_11

    .line 17
    goto :goto_1c

    .line 18
    :cond_11
    check-cast p1, Lcom/micloud/midrive/model/FileItem;

    .line 20
    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    .line 24
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isLocal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    .line 3
    return v0
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIsLocal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "FileItem{type="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->type:Lcom/micloud/midrive/ui/bean/DriveFileType;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", fileId=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->fileId:Ljava/lang/String;

    .line 19
    const/16 v2, 0x27

    .line 21
    const-string v3, ", size="

    .line 23
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 26
    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->size:J

    .line 28
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", createTime="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->createTime:J

    .line 38
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", modifyTime="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->modifyTime:J

    .line 48
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", localCreateTime="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->localCreateTime:J

    .line 58
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", localModifyTime="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v3, p0, Lcom/micloud/midrive/model/FileItem;->localModifyTime:J

    .line 68
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", sha1=\'"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->sha1:Ljava/lang/String;

    .line 78
    const-string v3, ", parentId=\'"

    .line 80
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->parentId:Ljava/lang/String;

    .line 85
    const-string v3, ", mTitle=\'"

    .line 87
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mTitle:Ljava/lang/String;

    .line 92
    const-string v3, ", mCoverUrl=\'"

    .line 94
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mCoverUrl:Ljava/lang/String;

    .line 99
    const-string v3, ", mIsLocal="

    .line 101
    invoke-static {v0, v1, v2, v3}, La/a;->w(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 104
    iget-boolean v1, p0, Lcom/micloud/midrive/model/FileItem;->mIsLocal:Z

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", mFilePath=\'"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lcom/micloud/midrive/model/FileItem;->mFilePath:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    const/16 v1, 0x7d

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method
