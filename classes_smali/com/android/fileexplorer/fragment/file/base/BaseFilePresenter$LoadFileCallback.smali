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
.method private constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$1;)V
    .registers 3

    .line 2
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-interface {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->finishPullRefresh()V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 20
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    iget-boolean v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mShowAll:Z

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->filterFiles(Ljava/util/List;)Ljava/util/List;

    .line 30
    move-result-object p1

    .line 31
    :goto_1e
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 36
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 38
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->updateFiles(Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 45
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 53
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isRootPath()Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_43

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 61
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    .line 67
    goto :goto_5c

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 70
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->isLimitPath()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_54

    .line 76
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 78
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    .line 84
    goto :goto_5c

    .line 85
    :cond_54
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 87
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 89
    const/4 v1, -0x1

    .line 90
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->showEmpty(ZI)V

    .line 93
    :goto_5c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 95
    iget v0, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mCurrentDevice:I

    .line 97
    const/4 v1, 0x2

    .line 98
    if-ne v0, v1, :cond_7e

    .line 100
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_7e

    .line 108
    new-instance p1, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;

    .line 110
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$LoadFileCallback;->this$0:Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 112
    iget-object v1, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mFiles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 114
    new-instance v2, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;

    .line 116
    iget-object v3, v0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->mView:Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 118
    invoke-direct {v2, v0, v1, v3}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;-><init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Ljava/util/List;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V

    .line 121
    invoke-direct {p1, v1, v2}, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;-><init>(Ljava/util/List;Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V

    .line 124
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/task/LoadOwnerTask;->start()V

    .line 127
    :cond_7e
    return-void
.end method
