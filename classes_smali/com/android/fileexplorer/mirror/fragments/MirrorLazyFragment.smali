.class public Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;
.super Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
.source "MirrorLazyFragment.java"

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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsPrepared:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsResume:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstVisible:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstInvisible:Z

    .line 16
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

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 3
    if-eqz v0, :cond_15

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 8
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstInvisible:Z

    .line 10
    if-eqz v1, :cond_12

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 16
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstInvisible:Z

    .line 18
    goto :goto_15

    .line 19
    :cond_12
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserInvisible(Z)V

    .line 22
    :cond_15
    :goto_15
    return-void
.end method

.method public isCreated()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsCreated:Z

    .line 3
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsCreated:Z

    .line 7
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onPause()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsResume:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    .line 16
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->onResume()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsResume:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->checkResumeVisible()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_15

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 22
    :cond_15
    return-void
.end method

.method public onUserInvisible(Z)V
    .registers 2

    return-void
.end method

.method public onUserVisible(Z)V
    .registers 2

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    .line 4
    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    .line 13
    :goto_c
    return-void
.end method

.method public prepareVisible()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsPrepared:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->visible()V

    .line 8
    goto :goto_b

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsPrepared:Z

    .line 12
    :goto_b
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 4
    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->prepareVisible()V

    .line 9
    goto :goto_c

    .line 10
    :cond_9
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->invisible()V

    .line 13
    :goto_c
    return-void
.end method

.method visible()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 3
    if-nez v0, :cond_19

    .line 5
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsResume:Z

    .line 7
    if-eqz v0, :cond_19

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsUserVisible:Z

    .line 12
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstVisible:Z

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_16

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 20
    iput-boolean v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->mIsFirstVisible:Z

    .line 22
    goto :goto_19

    .line 23
    :cond_16
    invoke-virtual {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorLazyFragment;->onUserVisible(Z)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method
