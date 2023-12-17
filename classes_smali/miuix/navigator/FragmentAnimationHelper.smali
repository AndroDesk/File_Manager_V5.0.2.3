.class public Lmiuix/navigator/FragmentAnimationHelper;
.super Ljava/lang/Object;
.source "FragmentAnimationHelper.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideContentFragment(Lmiuix/navigator/NavigatorImpl;)V
    .registers 5

    const-string v0, "miuix.content"

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_59

    :cond_17
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_59

    :cond_28
    instance-of v1, v0, Lmiuix/appcompat/app/Fragment;

    if-eqz v1, :cond_46

    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v2

    instance-of v2, v2, Lmiuix/view/EditActionMode;

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_46
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    sget p0, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v3}, Landroidx/fragment/app/b0;->l(IIII)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    :cond_59
    :goto_59
    return-void
.end method

.method public static isSecondaryOnTopNow(Lmiuix/navigator/Navigator;)Z
    .registers 1

    invoke-virtual {p0}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object p0

    check-cast p0, Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    move-result p0

    return p0
.end method

.method public static showContentFragment(Lmiuix/navigator/NavigatorImpl;)V
    .registers 5

    const-string v0, "miuix.content"

    invoke-virtual {p0, v0}, Lmiuix/navigator/NavigatorImpl;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Lmiuix/navigator/NavigatorImpl;->getNavigationView()Lmiuix/navigator/MiuixNavigationLayout;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/navigator/MiuixNavigationLayout;->isSecondaryOnTopNow()Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_52

    :cond_17
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_52

    :cond_28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_3f

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/b0;->g()V

    iget-object v2, v1, Landroidx/fragment/app/a;->s:Landroidx/fragment/app/FragmentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentManager;->y(Landroidx/fragment/app/FragmentManager$n;Z)V

    :cond_3f
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    sget p0, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v3}, Landroidx/fragment/app/b0;->l(IIII)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    :cond_52
    :goto_52
    return-void
.end method
