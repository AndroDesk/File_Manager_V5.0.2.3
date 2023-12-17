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

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;

    const-string v0, "MirrorExportFileFragment"

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public backToViewMode()V
    .registers 1

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->backToViewMode()V

    return-void
.end method

.method public getCategory()Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;
    .registers 2

    sget-object v0, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Picker:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    return-object v0
.end method

.method public getExtraPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->tab_model:Landroidx/lifecycle/q;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;->getArgs()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_directory"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutRes()I
    .registers 2

    const v0, 0x7f0d00aa

    return v0
.end method

.method public navigateToHome()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->hideRoot()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorExportFileFragment;->getExtraPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getNameFromFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->forceChangePathTo(Lcom/android/fileexplorer/model/PathSegment;)V

    return-void
.end method

.method public onBack()Z
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/model/ArchiveHelper;->getInstance()Lcom/android/fileexplorer/model/ArchiveHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/model/ArchiveHelper;->setArchiveToDecompress(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->onBack()Z

    move-result v0

    return v0
.end method
