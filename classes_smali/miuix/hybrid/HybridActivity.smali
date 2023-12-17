.class public Lmiuix/hybrid/HybridActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "HybridActivity.java"


# static fields
.field public static final EXTRA_URL:Ljava/lang/String; = "com.miui.sdk.hybrid.extra.URL"


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
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    .line 11
    return-void
.end method

.method private destroyHybridView()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 45
    return-void
.end method


# virtual methods
.method public autoLoadExtraUrlFromIntent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getConfigResId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 5
    sget v1, Lmiuix/hybrid/R$layout;->hybrid_main:I

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lmiuix/hybrid/HybridActivity;->getContentView()Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 11
    sget v0, Lmiuix/hybrid/R$id;->hybrid_view:I

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4f

    .line 19
    instance-of v1, v0, Lmiuix/hybrid/HybridView;

    .line 21
    if-eqz v1, :cond_4f

    .line 23
    if-eqz p1, :cond_31

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4f

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 46
    invoke-virtual {v1, p1}, Lmiuix/hybrid/HybridView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 49
    goto :goto_21

    .line 50
    :cond_31
    invoke-virtual {p0}, Lmiuix/hybrid/HybridActivity;->autoLoadExtraUrlFromIntent()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4c

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    move-result-object p1

    .line 60
    const/4 v1, 0x0

    .line 61
    if-eqz p1, :cond_44

    .line 63
    const-string v1, "com.miui.sdk.hybrid.extra.URL"

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    :cond_44
    invoke-virtual {p0}, Lmiuix/hybrid/HybridActivity;->getConfigResId()I

    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, v0, p1, v1}, Lmiuix/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {p0, v0}, Lmiuix/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;)V

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    invoke-direct {p0}, Lmiuix/hybrid/HybridActivity;->destroyHybridView()V

    .line 33
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_2a

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2a

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->canGoBack()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_9

    .line 28
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->getHybridManager()Lmiuix/internal/hybrid/HybridManager;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lmiuix/internal/hybrid/HybridManager;->isDetached()Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_9

    .line 38
    invoke-virtual {v1}, Lmiuix/hybrid/HybridView;->goBack()V

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_2a
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/hybrid/HybridView;

    .line 22
    invoke-virtual {v1, p1}, Lmiuix/hybrid/HybridView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 4
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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

.method public final registerHybridView(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/hybrid/HybridActivity;->getConfigResId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiuix/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;I)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lmiuix/hybrid/HybridActivity;->registerHybridView(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method public final registerHybridView(Landroid/view/View;ILjava/lang/String;)V
    .registers 6

    .line 3
    instance-of v0, p1, Lmiuix/hybrid/HybridView;

    if-eqz v0, :cond_17

    .line 4
    check-cast p1, Lmiuix/hybrid/HybridView;

    .line 5
    new-instance v0, Lmiuix/internal/hybrid/HybridManager;

    invoke-direct {v0, p0, p1}, Lmiuix/internal/hybrid/HybridManager;-><init>(Landroid/app/Activity;Lmiuix/hybrid/HybridView;)V

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/hybrid/HybridView;->setHybridManager(Lmiuix/internal/hybrid/HybridManager;)V

    .line 7
    iget-object v1, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v0, p2, p3}, Lmiuix/internal/hybrid/HybridManager;->init(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_17
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
    iget-object v0, p0, Lmiuix/hybrid/HybridActivity;->mHybridViews:Ljava/util/Set;

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
