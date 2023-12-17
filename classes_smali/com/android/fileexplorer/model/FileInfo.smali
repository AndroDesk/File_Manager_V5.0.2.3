.class public Lcom/android/fileexplorer/model/FileInfo;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "FileInfo.java"

# interfaces
.implements Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE_IN_MTP:I

.field public static final FILE_IN_SMB:I

.field public static final FILE_IN_URI:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileInfo;->FILE_IN_MTP:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileInfo;->FILE_IN_SMB:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/FileInfo;->FILE_IN_URI:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->count:I

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileType:I

    return-void
.end method


# virtual methods
.method public getDate()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    return-wide v0
.end method

.method public getFileId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameWithoutSuffix()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->justFileName:Ljava/lang/String;

    return-object v0

    :cond_d
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_31

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->justFileName:Ljava/lang/String;

    return-object v0

    :cond_31
    iget-object v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    return-wide v0
.end method

.method public isDir()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FileInfo[ filePath: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
