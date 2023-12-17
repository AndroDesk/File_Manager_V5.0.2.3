.class public Lmiuix/navigator/FragmentAnimationHelper;
.super Ljava/lang/Object;
.source "FragmentAnimationHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static hideContentFragment(Lmiuix/navigator/NavigatorImpl;)V
    .registers 5

    .line 1
    const-string v0, "miuix.content"

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_59

    .line 13
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_17

    .line 23
    goto :goto_59

    .line 24
    :cond_17
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_59

    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_28

    .line 40
    goto :goto_59

    .line 41
    :cond_28
    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    .line 43
    if-eqz v1, :cond_46

    .line 45
    move-object v1, v0

    .line 46
    check-cast v1, Lmiuix/appcompat/app/Fragment;

    .line 48
    invoke-virtual {v1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 55
    move-result-object v2

    .line 56
    instance-of v2, v2, Lmiuix/view/EditActionMode;

    .line 58
    if-eqz v2, :cond_46

    .line 60
    invoke-virtual {v1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 71
    :cond_46
    new-instance v1, Landroidx/fragment/app/a;

    .line 73
    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 76
    sget p0, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    .line 78
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, p0, v2, v3, v3}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 84
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 87
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 90
    :cond_59
    :goto_59
    return-void
.end method

.method public static isSecondaryOnTopNow(Lmiuix/navigator/Navigator;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lmiuix/navigator/NavigatorImpl;

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static showContentFragment(Lmiuix/navigator/NavigatorImpl;)V
    .registers 5

    .line 1
    const-string v0, "miuix.content"

    .line 3
    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_52

    .line 13
    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_17

    .line 23
    goto :goto_52

    .line 24
    :cond_17
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_52

    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_28

    .line 40
    goto :goto_52

    .line 41
    :cond_28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3f

    .line 47
    new-instance v1, Landroidx/fragment/app/a;

    .line 49
    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 52
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 55
    invoke-virtual {v1}, Landroidx/fragment/app/b0;->g()V

    .line 58
    iget-object v2, v1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    .line 64
    :cond_3f
    new-instance v1, Landroidx/fragment/app/a;

    .line 66
    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 69
    sget p0, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    .line 71
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v1, p0, v2, v3, v3}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 77
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 80
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 83
    :cond_52
    :goto_52
    return-void
.end method
