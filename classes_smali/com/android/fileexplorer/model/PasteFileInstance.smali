.class public Lcom/android/fileexplorer/model/PasteFileInstance;
.super Ljava/lang/Object;
.source "PasteFileInstance.java"


# static fields
.field public static final RENAME:I

.field public static final REPLACE:I

.field public static final SKIP:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/PasteFileInstance;->RENAME:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/PasteFileInstance;->REPLACE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/model/PasteFileInstance;->SKIP:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    iput v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    return-void
.end method

.method public static createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    new-instance v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/FileInfo;-><init>()V

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/model/PasteFileInstance;

    invoke-direct {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;-><init>()V

    sput-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    :cond_b
    sget-object v0, Lcom/android/fileexplorer/model/PasteFileInstance;->ourInstance:Lcom/android/fileexplorer/model/PasteFileInstance;

    return-object v0
.end method


# virtual methods
.method public clearPasteFiles()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setStatus(I)V

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->setToAll(Z)V

    return-void
.end method

.method public getFromPage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromPage:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceFolder()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceFrom()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->status:I

    return v0
.end method

.method public hasPasteFileInfos()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPastePrivateFiles()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isActionRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    return v0
.end method

.method public isFromCloudToLocal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    return v0
.end method

.method public isMoving()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    return v0
.end method

.method public isPasteFileInfosContainsDir()Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isPasteFileInfosOnlyCloud()Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v2

    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-ne v2, v3, :cond_11

    return v1

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    return v1
.end method

.method public isPasteFileInfosOnlyLocal()Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v2

    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-eq v2, v3, :cond_11

    return v1

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    return v1
.end method

.method public isToAll()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->toAll:Z

    return v0
.end method

.method public setActionRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->isActionRunning:Z

    return-void
.end method

.method public setFromCloudToLocal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

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

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->clearClipboard()V

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_16

    return v1

    :cond_16
    if-eqz v0, :cond_22

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->createClipData(Ljava/util/List;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return v1

    :cond_22
    const/4 p1, 0x0

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

    const-string p1, "手机tab页"

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mFromCloudToLocal:Z

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

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPasteFileInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mPastPrivateFiles:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mIsMoving:Z

    return-void
.end method

.method public setSourceFrom(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/fileexplorer/filemanager/FileTransferParams$SourceFrom;
        .end annotation
    .end param

    iput p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->mSourceFrom:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->status:I

    return-void
.end method

.method public setToAll(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/model/PasteFileInstance;->toAll:Z

    return-void
.end method
