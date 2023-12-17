.class public Lcom/android/fileexplorer/model/FileInfo;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "FileInfo.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE_IN_MTP:I = 0x4

.field public static final FILE_IN_SMB:I = 0x3

.field public static final FILE_IN_URI:I = 0x5

.field public static final FILE_IN_VOLUME:I


# instance fields
.field public canRead:Z

.field public canWrite:Z

.field public count:I

.field public documentInfo:Lcom/android/fileexplorer/mtp/DocumentInfo;

.field public duration:J

.field public fileCategoryType:Ljava/lang/Integer;

.field public fileId:Ljava/lang/Long;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public fileType:I

.field public isDirectory:Z

.field public isFav:Z

.field public isHidden:Z

.field public justFileName:Ljava/lang/String;

.field public modifiedDate:J

.field public owner:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public subFileCategoryType:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    .line 7
    const/16 v0, 0xe

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    .line 18
    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 3
    return-wide v0
.end method

.method public getFileId()Ljava/lang/Long;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNameWithoutSuffix()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->justFileName:Ljava/lang/String;

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 16
    if-eqz v0, :cond_14

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 20
    return-object v0

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 23
    const-string v1, "."

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-le v0, v1, :cond_31

    .line 32
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 37
    move-result v1

    .line 38
    if-le v1, v0, :cond_31

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->justFileName:Ljava/lang/String;

    .line 49
    return-object v0

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 52
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 3
    return-wide v0
.end method

.method public isDir()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "FileInfo[ filePath: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", isDir: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "]"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
