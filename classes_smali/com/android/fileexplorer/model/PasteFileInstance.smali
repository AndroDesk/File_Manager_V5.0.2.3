.class public Lcom/android/fileexplorer/model/PasteFileInstance;
.super Ljava/lang/Object;
.source "PasteFileInstance.java"


# static fields
.field public static final RENAME:I = 0x1

.field public static final REPLACE:I = 0x2

.field public static final SKIP:I = 0x3

.field public static final USER_NOT_CHOOSE:I

.field private static ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;


# instance fields
.field private isActionRunning:Z

.field private mFromCloudToLocal:Z

.field private mFromPage:Ljava/lang/String;

.field private mIsMoving:Z

.field private mPastPrivateFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPasteFileInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceFrom:I

.field private status:I

.field private toAll:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    .line 7
    iput v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public static createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 11
    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    .line 14
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 16
    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 22
    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;-><init>()V

    .line 10
    sput-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 12
    :cond_b
    sget-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 14
    return-object v0
.end method


# virtual methods
.method public clearPasteFiles()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    .line 18
    return-void
.end method

.method public getFromPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromPage:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPasteFileInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getPastePrivateFiles()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getSourceFolder()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_23

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 20
    new-instance v1, Ljava/io/File;

    .line 22
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_23

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    return-object v0
.end method

.method public getSourceFrom()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    .line 3
    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->status:I

    .line 3
    return v0
.end method

.method public hasPasteFileInfos()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public hasPastePrivateFiles()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public isActionRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    .line 3
    return v0
.end method

.method public isFromCloudToLocal()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    .line 3
    return v0
.end method

.method public isMoving()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    .line 3
    return v0
.end method

.method public isPasteFileInfosContainsDir()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    if-eqz v0, :cond_22

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_22

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_22

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 29
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 31
    if-eqz v1, :cond_10

    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public isPasteFileInfosOnlyCloud()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_28

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_28

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_26

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 36
    if-ne v2, v3, :cond_11

    .line 38
    return v1

    .line 39
    :cond_26
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_28
    return v1
.end method

.method public isPasteFileInfosOnlyLocal()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_28

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_28

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_26

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 36
    if-eq v2, v3, :cond_11

    .line 38
    return v1

    .line 39
    :cond_26
    const/4 v0, 0x1

    .line 40
    return v0

    .line 41
    :cond_28
    return v1
.end method

.method public isToAll()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->toAll:Z

    .line 3
    return v0
.end method

.method public setActionRunning(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    .line 3
    return-void
.end method

.method public setFromCloudToLocal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    .line 3
    return-void
.end method

.method public setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->clearClipboard()V

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 18
    move-result p2

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p2, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    if-eqz v0, :cond_22

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_22

    .line 31
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 34
    return v1

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public setPasteFileInfos(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_11

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_11
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    const-string p1, "手机tab页"

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromPage:Ljava/lang/String;

    return-void
.end method

.method public setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_11

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_11
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    .line 6
    iput-object p3, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromPage:Ljava/lang/String;

    return-void
.end method

.method public setPastePrivateFiles(Ljava/util/ArrayList;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/encryption/PrivateFile;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    .line 18
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    .line 20
    return-void
.end method

.method public setSourceFrom(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    .line 3
    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->status:I

    .line 3
    return-void
.end method

.method public setToAll(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->toAll:Z

    .line 3
    return-void
.end method
