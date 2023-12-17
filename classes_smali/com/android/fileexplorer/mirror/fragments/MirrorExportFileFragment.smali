.class public Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;
.super Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;
.source "MirrorExportFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/fragments/IHomeNavigation;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    .line 3
    const-string v0, "MirrorExportFileFragment"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;->TAG:Ljava/lang/String;

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
    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 3
    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "current_directory"

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00aa

    return v0
.end method

.method public navigateToHome()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->hideRoot()V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;->getExtraPath()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V

    .line 22
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
