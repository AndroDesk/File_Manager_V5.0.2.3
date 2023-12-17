.class public Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;
.source "MirrorMiShareFileFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;

    .line 3
    const-string v0, "MirrorMiShareFileFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->backToViewMode()V

    .line 4
    return-void
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    .line 1
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->MINE:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 17
    return-object v0
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    .line 3
    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00aa

    return v0
.end method

.method public navigateTo(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->getCurrentPath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2e

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->getExtraPath()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 34
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 43
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 46
    return-void

    .line 47
    :cond_2e
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_40

    .line 61
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->getExtraPath()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    :cond_40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4a

    .line 71
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorMiShareFileFragment;->getExtraPath()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    :cond_4a
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 77
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v0, v1, p1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 86
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onPathChanged(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 89
    return-void
.end method

.method public onBack()Z
    .registers 3

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onBack()Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method
