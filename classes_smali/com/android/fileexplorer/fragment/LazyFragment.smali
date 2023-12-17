.class public abstract Lcom/android/fileexplorer/fragment/LazyFragment;
.super Lcom/android/fileexplorer/fragment/BaseFragment;
.source "LazyFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/fragment/ILazyFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "LazyFragment"


# instance fields
.field private mIsCreated:Z

.field private mIsFirstInvisible:Z

.field private mIsFirstVisible:Z

.field private mIsPrepared:Z

.field private mIsResume:Z

.field public mIsUserVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsPrepared:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsResume:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstVisible:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstInvisible:Z

    return-void
.end method


# virtual methods
.method checkResumeVisible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public invisible()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    invoke-static {}, Lcom/android/fileexplorer/util/PermissionUtils;->isGrantPermission()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstInvisible:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstInvisible:Z

    goto :goto_1b

    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserInvisible(Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public isCreated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsCreated:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->prepareVisible()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsCreated:Z

    return-void
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsResume:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->invisible()V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsResume:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->checkResumeVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->prepareVisible()V

    :cond_15
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/Statistics;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/BaseFragment;->getPageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/Statistics;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public prepareVisible()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsPrepared:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->visible()V

    goto :goto_b

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsPrepared:Z

    :goto_b
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->prepareVisible()V

    goto :goto_c

    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/fragment/LazyFragment;->invisible()V

    :goto_c
    return-void
.end method

.method visible()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsResume:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsUserVisible:Z

    iget-boolean v1, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    iput-boolean v2, p0, Lcom/android/fileexplorer/fragment/LazyFragment;->mIsFirstVisible:Z

    goto :goto_19

    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/fragment/LazyFragment;->onUserVisible(Z)V

    :cond_19
    :goto_19
    return-void
.end method
