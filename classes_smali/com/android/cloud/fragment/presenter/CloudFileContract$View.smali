.class public interface abstract Lcom/android/cloud/fragment/presenter/CloudFileContract$View;
.super Ljava/lang/Object;
.source "CloudFileContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/fragment/presenter/CloudFileContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract displayPageStatus(Lcom/android/cloud/constant/PageConstant$PageStatus;)V
.end method

.method public abstract finishPullRefresh()V
.end method

.method public abstract openFile(ILcom/android/fileexplorer/view/fileitem/FileListItemVO;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openFolder(Lcom/android/fileexplorer/view/fileitem/FileListItemVO;)V
.end method

.method public abstract requestRefresh(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract showLoading(ZI)V
.end method

.method public abstract showToast(I)V
.end method

.method public abstract switchViewMode()V
.end method

.method public abstract updateCloudNotify(Z)V
.end method

.method public abstract updateFiles(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract updatePathGallery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;)V"
        }
    .end annotation
.end method
