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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakPresenterRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;->updateFiles(Ljava/util/List;)V

    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/fragment/file/base/BaseFileContract$View;

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mWeakPresenterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;

    if-eqz v0, :cond_48

    if-nez v1, :cond_15

    goto :goto_48

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter$DirQueryCallback;->mSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v2, :cond_1b

    iget-boolean v3, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v3, :cond_1b

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iput-object p2, v2, Lcom/android/fileexplorer/model/FileInfo;->owner:Ljava/lang/String;

    iget-object p1, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->saveDirPackageToCache(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method
