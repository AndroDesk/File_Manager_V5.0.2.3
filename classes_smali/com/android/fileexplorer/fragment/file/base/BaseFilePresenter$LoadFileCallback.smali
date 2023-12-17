.class Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;
.super Ljava/lang/Object;
.source "BaseFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/LoadFileTask$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadFileCallback"
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

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->finishPullRefresh()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-boolean v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    if-eqz v0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->filterFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1e
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->updateFiles(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isRootPath()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    goto :goto_5c

    :cond_43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isLimitPath()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    goto :goto_5c

    :cond_54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    :goto_5c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7e

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7e

    new-instance p1, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    iget-object v1, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;

    iget-object v3, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Ljava/util/List;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    invoke-direct {p1, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->start()V

    :cond_7e
    return-void
.end method
