.class public Lmiuix/hybrid/HybridFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "HybridFragment.java"


# instance fields
.field private mHybridViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/hybrid/HybridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 11
    return-void
.end method

.method private destroyHybridView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_27

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_23

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    :cond_23
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->destroy()V

    .line 39
    goto :goto_6

    .line 40
    :cond_27
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 45
    return-void
.end method


# virtual methods
.method public getConfigResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    sget v1, Lmiuix/hybrid/R$layout;->hybrid_main:I

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onDestroy()V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    invoke-direct {p0}, Lmiuix/hybrid/HybridFragment;->destroyHybridView()V

    .line 33
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getContentView()Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onPause()V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onResume()V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onStart()V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onStop()V

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    sget v0, Lmiuix/hybrid/R$id;->hybrid_view:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_31

    .line 12
    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    .line 14
    if-eqz v0, :cond_31

    .line 16
    const/4 v0, 0x0

    .line 17
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    .line 19
    if-eqz p2, :cond_18

    .line 21
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    :cond_18
    if-nez v0, :cond_28

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    move-result-object p2

    .line 35
    if-eqz p2, :cond_28

    .line 37
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    :cond_28
    check-cast p1, Lmiuix/hybrid/HybridView;

    .line 43
    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getConfigResId()I

    .line 46
    move-result p2

    .line 47
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 50
    :cond_31
    return-void
.end method

.method public final registerHybridView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .registers 6

    .line 3
    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    if-eqz v0, :cond_1b

    .line 4
    check-cast p1, Lmiuix/hybrid/HybridView;

    .line 5
    new-instance v0, Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiuix/hybrid/HybridView;)V

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridView;->setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V

    .line 7
    iget-object v1, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view being registered is not a hybrid view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterHybridView(Landroid/view/View;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "view being unregistered is not a hybrid view"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method
