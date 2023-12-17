.class public abstract Landroidx/preference/PreferenceHeaderFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceHeaderFragmentCompat.kt"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceHeaderFragmentCompat$a;
    }
.end annotation


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .registers 10
    .param p1  # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "caller"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    sget v1, Landroidx/preference/l;->preferences_header:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1003

    const-string v5, "childFragmentManager"

    const/4 v6, 0x0

    if-ne v0, v1, :cond_b5

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2c

    invoke-virtual {p2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_27

    goto/16 :goto_b4

    :cond_27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b4

    :cond_2c
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_34

    move-object p1, v6

    goto :goto_48

    :cond_34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_48
    if-nez p1, :cond_4b

    goto :goto_52

    :cond_4b
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->F()I

    move-result p2

    if-lez p2, :cond_78

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    iget-object p2, p2, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/FragmentManager$j;

    const-string v0, "childFragmentManager.getBackStackEntryAt(0)"

    invoke-static {p2, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-interface {p2}, Landroidx/fragment/app/FragmentManager$j;->getId()I

    move-result p2

    invoke-virtual {v0, p2, v3}, Landroidx/fragment/app/FragmentManager;->T(IZ)V

    :cond_78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-boolean v2, v0, Landroidx/fragment/app/b0;->r:Z

    sget p2, Landroidx/preference/l;->preferences_detail:I

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p1, v6}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result p1

    if-eqz p1, :cond_9a

    iput v4, v0, Landroidx/fragment/app/b0;->h:I

    :cond_9a
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    iget-boolean p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-nez p2, :cond_a4

    iput-boolean v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_a4
    iget-boolean p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    if-nez p2, :cond_af

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    move-result p2

    if-eqz p2, :cond_b1

    :cond_af
    iput-boolean v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_b1
    invoke-virtual {v0}, Landroidx/fragment/app/a;->p()I

    :goto_b4
    return v2

    :cond_b5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p1

    sget v0, Landroidx/preference/l;->preferences_detail:I

    if-ne p1, v0, :cond_fe

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v1, "childFragmentManager.fra….fragment!!\n            )"

    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p2, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-boolean v2, v1, Landroidx/fragment/app/b0;->r:Z

    invoke-virtual {v1, v0, p1, v6}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iput v4, v1, Landroidx/fragment/app/b0;->h:I

    invoke-virtual {v1, v6}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    return v2

    :cond_fe
    return v3
.end method

.method public final b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    return-object v0
.end method

.method public abstract c()Landroidx/preference/PreferenceFragmentCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final onAttach(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "parentFragmentManager"

    invoke-static {p1, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v0}, Landroidx/fragment/app/a;->p()I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1  # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    sget p3, Landroidx/preference/l;->preferences_sliding_pane_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    new-instance p3, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    sget v0, Landroidx/preference/l;->preferences_header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/preference/j;->preferences_header_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/preference/m;->preferences_header_pane_weight:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    sget p1, Landroidx/preference/l;->preferences_detail:I

    invoke-virtual {p3, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/preference/j;->preferences_detail_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/preference/m;->preferences_detail_pane_weight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_93

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->c()Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const-string v1, "childFragmentManager"

    invoke-static {p3, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p3, 0x1

    iput-boolean p3, v1, Landroidx/fragment/app/b0;->r:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2, p3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    :cond_93
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    return-object p2
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-direct {p1, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$a;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-nez p2, :cond_3f

    iget-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    if-eqz p2, :cond_3a

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result p2

    if-eqz p2, :cond_3a

    const/4 p2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p2, 0x0

    :goto_3b
    invoke-virtual {p1, p2}, Landroidx/activity/h;->setEnabled(Z)V

    goto :goto_47

    :cond_3f
    new-instance p2, Landroidx/preference/PreferenceHeaderFragmentCompat$b;

    invoke-direct {p2, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$b;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance p2, Landroidx/preference/d;

    invoke-direct {p2, p0}, Landroidx/preference/d;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroidx/activity/j;

    if-eqz p2, :cond_5e

    check-cast p1, Landroidx/activity/j;

    goto :goto_5f

    :cond_5e
    const/4 p1, 0x0

    :goto_5f
    if-nez p1, :cond_62

    goto :goto_72

    :cond_62
    invoke-interface {p1}, Landroidx/activity/j;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/m;

    move-result-object p2

    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    :goto_72
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .registers 7
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_83

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Landroidx/preference/l;->preferences_header:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_7b

    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1f

    goto :goto_5d

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    :goto_28
    if-ge v0, v2, :cond_5d

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    const-string v4, "headerFragment.preferenc…reen.getPreference(index)"

    invoke-static {v0, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_41

    move v0, v3

    goto :goto_28

    :cond_41
    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_5d

    :cond_48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_5e

    :cond_5d
    :goto_5d
    move-object p1, v1

    :goto_5e
    if-nez p1, :cond_61

    goto :goto_83

    :cond_61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "childFragmentManager"

    invoke-static {v0, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/fragment/app/b0;->r:Z

    sget v0, Landroidx/preference/l;->preferences_detail:I

    invoke-virtual {v2, v0, p1, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    goto :goto_83

    :cond_7b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.preference.PreferenceFragmentCompat"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_83
    :goto_83
    return-void
.end method
