.class public Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;
.super Ljava/lang/Object;
.source "AbsFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/AbsFileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirQueryCallback"
.end annotation


# instance fields
.field private mRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public onQueryFinish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 17
    invoke-interface {v0}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;->onQueryFinish()V

    .line 20
    :cond_13
    return-void
.end method

.method public onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;->mRefs:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_13

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/AbsFileFragment$DirQueryCallback;->mRefs:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/controller/WeakQueryCallBack$QueryCallBack;->onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_13
    return-void
.end method
