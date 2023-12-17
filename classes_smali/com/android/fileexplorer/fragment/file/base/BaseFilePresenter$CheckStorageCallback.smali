.class Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;
.super Ljava/lang/Object;
.source "BaseFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/CheckStorageTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckStorageCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackgroundComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->onBackgroundComplete(Ljava/util/List;)V

    return-void
.end method

.method public onBackgroundComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/StorageInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mForceMainSpace:Z

    if-nez v0, :cond_1b

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    invoke-interface {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showInvalidStorage()V

    goto :goto_20

    :cond_1b
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$CheckStorageCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->startLoadFile()V

    :goto_20
    return-void
.end method
