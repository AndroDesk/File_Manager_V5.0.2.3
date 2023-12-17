.class public Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "DetailFragmentNavInfo.java"


# instance fields
.field private mSaveToBackStack:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    iput-boolean p4, p0, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->mSaveToBackStack:Z

    return-void
.end method


# virtual methods
.method public isSaveToBackStack()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->mSaveToBackStack:Z

    return v0
.end method

.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 12

    const-string v0, "miuix.secondaryContent"

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->F()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_14

    move v3, v5

    goto :goto_15

    :cond_14
    move v3, v4

    :goto_15
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v6

    sget-object v7, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    if-eq v6, v7, :cond_24

    sget-object v7, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    if-ne v6, v7, :cond_22

    goto :goto_24

    :cond_22
    move v6, v4

    goto :goto_25

    :cond_24
    :goto_24
    move v6, v5

    :goto_25
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    move-result v7

    if-nez v7, :cond_49

    if-nez v3, :cond_49

    iget-object v3, v2, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManager$j;

    invoke-interface {v3}, Landroidx/fragment/app/FragmentManager$j;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroidx/fragment/app/FragmentManager;->T(IZ)V

    if-nez v6, :cond_46

    invoke-static {p1}, Lmiuix/navigator/FragmentAnimationHelper;->isSecondaryOnTopNow(Lmiuix/navigator/Navigator;)Z

    move-result v3

    if-eqz v3, :cond_46

    move v3, v5

    goto :goto_47

    :cond_46
    move v3, v4

    :goto_47
    move v7, v5

    goto :goto_4b

    :cond_49
    move v7, v3

    move v3, v4

    :goto_4b
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->A()V

    if-eq p1, v1, :cond_7b

    const-string v8, "miuix.content"

    invoke-virtual {p1, v8}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v9

    invoke-virtual {v9}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    instance-of v9, v8, Lmiuix/appcompat/app/Fragment;

    if-eqz v9, :cond_7b

    check-cast v8, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v8}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v9

    invoke-virtual {v9}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v9

    instance-of v9, v9, Lmiuix/view/EditActionMode;

    if-eqz v9, :cond_7b

    invoke-virtual {v8}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v8

    invoke-virtual {v8}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ActionMode;->finish()V

    :cond_7b
    invoke-virtual {v1, v5}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->isFocused()Z

    move-result v1

    if-nez v1, :cond_85

    return v4

    :cond_85
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    if-nez v3, :cond_a1

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    move-result v2

    if-nez v2, :cond_95

    if-eqz v6, :cond_95

    goto :goto_a1

    :cond_95
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_enter:I

    sget v5, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    sget v6, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    sget v8, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    invoke-virtual {v1, v2, v5, v6, v8}, Landroidx/fragment/app/b0;->l(IIII)V

    goto :goto_a8

    :cond_a1
    :goto_a1
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    sget v5, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    invoke-virtual {v1, v4, v4, v2, v5}, Landroidx/fragment/app/b0;->l(IIII)V

    :goto_a8
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    move-result v2

    if-nez v2, :cond_b0

    if-eqz v7, :cond_b4

    :cond_b0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    :cond_b4
    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor:I

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    if-eqz v7, :cond_d5

    if-nez v3, :cond_d5

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object p1

    check-cast p1, Lmiuix/navigator/NavigatorImpl;

    invoke-static {p1}, Lmiuix/navigator/FragmentAnimationHelper;->hideContentFragment(Lmiuix/navigator/NavigatorImpl;)V

    :cond_d5
    return v4
.end method
