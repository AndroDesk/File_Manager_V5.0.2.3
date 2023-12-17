.class Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;
.super Ljava/lang/Object;
.source "BaseFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/file/task/SortTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortCallback"
.end annotation


# instance fields
.field public mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/fileexplorer/apptag/strategy/sort/Comparable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$SortCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->filterFiles(Ljava/util/List;)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->updateFiles(Ljava/util/List;)V

    .line 18
    :cond_11
    return-void
.end method
