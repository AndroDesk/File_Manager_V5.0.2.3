.class public Lcom/android/fileexplorer/filemanager/FileTransferParams;
.super Ljava/lang/Object;
.source "FileTransferParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
    }
.end annotation


# static fields
.field public static DEST_EXACT:I = 0x0

.field public static DEST_EXACT_MIRROR:I = 0x2

.field public static DEST_FIXED_MIRROR:I = 0x1


# instance fields
.field private volatile mCompleteAccount:I

.field private mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mCurrentIndex:I

.field private mDestFile:Ljava/io/File;

.field private mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private mDestType:I

.field private mIsForceOverWrite:Z

.field private mIsMove:Z

.field private mSourceFrom:I

.field private mTotalFileCount:I

.field private useThreadPool:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->useThreadPool:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsForceOverWrite:Z

    .line 4
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    iput v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/model/FileInfo;IZ)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->useThreadPool:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsForceOverWrite:Z

    .line 8
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_EXACT:I

    iput v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestType:I

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    iput p2, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mTotalFileCount:I

    .line 11
    iput-boolean p3, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsMove:Z

    return-void
.end method


# virtual methods
.method public checkValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public getCurrentFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object v0
.end method

.method public getCurrentIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentIndex:I

    .line 3
    return v0
.end method

.method public getDestFile()Ljava/io/File;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->isValid()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    new-instance v0, Ljava/io/File;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    iget-object v1, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 15
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v0

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public getDestParentFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-object v0
.end method

.method public getDestParentPath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getDestParentFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getDestParentFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return-object v0
.end method

.method public getDestType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestType:I

    .line 3
    return v0
.end method

.method public getSourceFrom()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mSourceFrom:I

    .line 3
    return v0
.end method

.method public getSourcePath()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getCurrentFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/filemanager/FileTransferParams;->getCurrentFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    :goto_e
    return-object v0
.end method

.method public getTotalFileCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mTotalFileCount:I

    .line 3
    return v0
.end method

.method public getUseThreadPool()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->useThreadPool:Z

    .line 3
    return v0
.end method

.method public isForceOverWrite()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsForceOverWrite:Z

    .line 3
    return v0
.end method

.method public isLast()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCompleteAccount:I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mTotalFileCount:I

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isMove()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsMove:Z

    .line 3
    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public setCurrentFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-void
.end method

.method public setCurrentIndex(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCurrentIndex:I

    .line 3
    return-void
.end method

.method public setDestParentFileInfo(Lcom/android/fileexplorer/model/FileInfo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestParentFileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 3
    return-void
.end method

.method public setDestType(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mDestType:I

    .line 3
    return-void
.end method

.method public setForceOverWrite(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsForceOverWrite:Z

    .line 3
    return-void
.end method

.method public setIsMove(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mIsMove:Z

    .line 3
    return-void
.end method

.method public setSourceFrom(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mSourceFrom:I

    .line 3
    return-void
.end method

.method public setTotalFileCount(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mTotalFileCount:I

    .line 3
    return-void
.end method

.method public setUseThreadPool()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->useThreadPool:Z

    .line 4
    return-void
.end method

.method public updateCompleteAccount()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCompleteAccount:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->mCompleteAccount:I

    .line 7
    return-void
.end method
