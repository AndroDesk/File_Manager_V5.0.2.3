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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    return-void
.end method

.method private destroyHybridView()V
    .registers 4

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->destroy()V

    goto :goto_6

    :cond_27
    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lmiuix/hybrid/R$layout;->hybrid_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onDestroy()V

    goto :goto_9

    :cond_1d
    invoke-direct {p0}, Lmiuix/hybrid/HybridFragment;->destroyHybridView()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getContentView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onPause()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onResume()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onStart()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/hybrid/HybridView;

    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/internal/hybrid/HybridManager;->onStop()V

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget v0, Lmiuix/hybrid/R$id;->hybrid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_31

    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    if-eqz p2, :cond_18

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_28

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_28
    check-cast p1, Lmiuix/hybrid/HybridView;

    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getConfigResId()I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    :cond_31
    return-void
.end method

.method public final registerHybridView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiuix/hybrid/HybridFragment;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/hybrid/HybridFragment;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .registers 6

    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    if-eqz v0, :cond_1b

    check-cast p1, Lmiuix/hybrid/HybridView;

    new-instance v0, Lmiuix/internal/hybrid/HybridManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiuix/hybrid/HybridView;)V

    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridView;->setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V

    iget-object v1, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view being registered is not a hybrid view"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterHybridView(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiuix/hybrid/HybridFragment;->mHybridViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "view being unregistered is not a hybrid view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
