.class Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;
.super Ljava/lang/Object;
.source "BaseFilePresenter.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirQueryCallback"
.end annotation


# instance fields
.field private final mSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakPresenterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;Ljava/util/List;Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakPresenterRef:Ljava/lang/ref/WeakReference;

    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 13
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 9
    if-nez v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    .line 14
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->updateFiles(Ljava/util/List;)V

    .line 17
    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakPresenterRef:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    .line 17
    if-eqz v0, :cond_48

    .line 19
    if-nez v1, :cond_15

    .line 21
    goto :goto_48

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_48

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 40
    if-eqz v2, :cond_1b

    .line 42
    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 44
    if-eqz v3, :cond_1b

    .line 46
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_1b

    .line 54
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_1b

    .line 62
    iput-object p2, v2, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    .line 64
    iget-object p1, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v1, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->saveDirPackageToCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method
