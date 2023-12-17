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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 4
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

    .line 1
    const-string v0, "caller"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "pref"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    .line 14
    move-result v0

    .line 15
    sget v1, Landroidx/preference/l;->preferences_header:I

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/16 v4, 0x1003

    .line 21
    const-string v5, "childFragmentManager"

    .line 23
    const/4 v6, 0x0

    .line 24
    if-ne v0, v1, :cond_b5

    .line 26
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2c

    .line 32
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_27

    .line 38
    goto/16 :goto_b4

    .line 40
    :cond_27
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 43
    goto/16 :goto_b4

    .line 45
    :cond_2c
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_34

    .line 51
    move-object p1, v6

    .line 52
    goto :goto_48

    .line 53
    :cond_34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 72
    move-result-object p1

    .line 73
    :goto_48
    if-nez p1, :cond_4b

    .line 75
    goto :goto_52

    .line 76
    :cond_4b
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    :goto_52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 90
    move-result p2

    .line 91
    if-lez p2, :cond_78

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 96
    move-result-object p2

    .line 97
    iget-object p2, p2, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Landroidx/fragment/app/FragmentManager$j;

    .line 105
    const-string v0, "childFragmentManager.getBackStackEntryAt(0)"

    .line 107
    invoke-static {p2, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p2}, Landroidx/fragment/app/FragmentManager$j;->getId()I

    .line 117
    move-result p2

    .line 118
    invoke-virtual {v0, p2, v3}, Landroidx/fragment/app/FragmentManager;->T(IZ)V

    .line 121
    :cond_78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 124
    move-result-object p2

    .line 125
    invoke-static {p2, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroidx/fragment/app/a;

    .line 130
    invoke-direct {v0, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 133
    iput-boolean v2, v0, Landroidx/fragment/app/b0;->r:Z

    .line 135
    sget p2, Landroidx/preference/l;->preferences_detail:I

    .line 137
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0, p2, p1, v6}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_9a

    .line 153
    iput v4, v0, Landroidx/fragment/app/b0;->h:I

    .line 155
    :cond_9a
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 158
    move-result-object p1

    .line 159
    iget-boolean p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 161
    if-nez p2, :cond_a4

    .line 163
    iput-boolean v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 165
    :cond_a4
    iget-boolean p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Z

    .line 167
    if-nez p2, :cond_af

    .line 169
    const/4 p2, 0x0

    .line 170
    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_b1

    .line 176
    :cond_af
    iput-boolean v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 178
    :cond_b1
    invoke-virtual {v0}, Landroidx/fragment/app/a;->p()I

    .line 181
    :goto_b4
    return v2

    .line 182
    :cond_b5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    .line 185
    move-result p1

    .line 186
    sget v0, Landroidx/preference/l;->preferences_detail:I

    .line 188
    if-ne p1, v0, :cond_fe

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 209
    move-result-object v3

    .line 210
    invoke-static {v3}, Li3/g;->b(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 216
    move-result-object p1

    .line 217
    const-string v1, "childFragmentManager.fra….fragment!!\n            )"

    .line 219
    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    .line 225
    move-result-object p2

    .line 226
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 232
    move-result-object p2

    .line 233
    invoke-static {p2, v5}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance v1, Landroidx/fragment/app/a;

    .line 238
    invoke-direct {v1, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 241
    iput-boolean v2, v1, Landroidx/fragment/app/b0;->r:Z

    .line 243
    invoke-virtual {v1, v0, p1, v6}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 246
    iput v4, v1, Landroidx/fragment/app/b0;->h:I

    .line 248
    invoke-virtual {v1, v6}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 254
    return v2

    .line 255
    :cond_fe
    return v3
.end method

.method public final b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 7
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

    .line 1
    const-string v0, "context"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    move-result-object p1

    .line 13
    const-string v0, "parentFragmentManager"

    .line 15
    invoke-static {p1, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroidx/fragment/app/a;

    .line 20
    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 23
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 26
    invoke-virtual {v0}, Landroidx/fragment/app/a;->p()I

    .line 29
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

    .line 1
    const-string p2, "inflater"

    .line 3
    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 8
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p3

    .line 12
    invoke-direct {p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    .line 15
    sget p3, Landroidx/preference/l;->preferences_sliding_pane_layout:I

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    .line 20
    new-instance p3, Landroidx/fragment/app/FragmentContainerView;

    .line 22
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {p3, v0}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 29
    sget v0, Landroidx/preference/l;->preferences_header:I

    .line 31
    invoke-virtual {p3, v0}, Landroid/view/View;->setId(I)V

    .line 34
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v2

    .line 40
    sget v3, Landroidx/preference/j;->preferences_header_width:I

    .line 42
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    move-result v2

    .line 46
    invoke-direct {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(I)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v2

    .line 53
    sget v3, Landroidx/preference/m;->preferences_header_pane_weight:I

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    iput v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 62
    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance p3, Landroidx/fragment/app/FragmentContainerView;

    .line 67
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p3, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 74
    sget p1, Landroidx/preference/l;->preferences_detail:I

    .line 76
    invoke-virtual {p3, p1}, Landroid/view/View;->setId(I)V

    .line 79
    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 85
    sget v2, Landroidx/preference/j;->preferences_detail_width:I

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result v1

    .line 91
    invoke-direct {p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(I)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 97
    move-result-object v1

    .line 98
    sget v2, Landroidx/preference/m;->preferences_detail_pane_weight:I

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 103
    move-result v1

    .line 104
    int-to-float v1, v1

    .line 105
    iput v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    .line 107
    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_93

    .line 120
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->c()Landroidx/preference/PreferenceFragmentCompat;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 127
    move-result-object p3

    .line 128
    const-string v1, "childFragmentManager"

    .line 130
    invoke-static {p3, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v1, Landroidx/fragment/app/a;

    .line 135
    invoke-direct {v1, p3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 138
    const/4 p3, 0x1

    .line 139
    iput-boolean p3, v1, Landroidx/fragment/app/b0;->r:Z

    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-virtual {v1, v0, p1, v2, p3}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 145
    invoke-virtual {v1}, Landroidx/fragment/app/a;->p()I

    .line 148
    :cond_93
    const/4 p1, 0x3

    .line 149
    invoke-virtual {p2, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    .line 152
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

    .line 1
    const-string v0, "view"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    new-instance p1, Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 11
    invoke-direct {p1, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$a;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    .line 14
    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 16
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 19
    move-result-object p1

    .line 20
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 22
    invoke-static {p1}, Lm0/g0$g;->c(Landroid/view/View;)Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_3f

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_3f

    .line 34
    iget-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 36
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 42
    move-result-object p2

    .line 43
    iget-boolean p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:Z

    .line 45
    if-eqz p2, :cond_3a

    .line 47
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_3a

    .line 57
    const/4 p2, 0x1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    const/4 p2, 0x0

    .line 60
    :goto_3b
    invoke-virtual {p1, p2}, Landroidx/activity/h;->setEnabled(Z)V

    .line 63
    goto :goto_47

    .line 64
    :cond_3f
    new-instance p2, Landroidx/preference/PreferenceHeaderFragmentCompat$b;

    .line 66
    invoke-direct {p2, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$b;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 72
    :goto_47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 75
    move-result-object p1

    .line 76
    new-instance p2, Landroidx/preference/d;

    .line 78
    invoke-direct {p2, p0}, Landroidx/preference/d;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    .line 81
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$m;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 87
    move-result-object p1

    .line 88
    instance-of p2, p1, Landroidx/activity/j;

    .line 90
    if-eqz p2, :cond_5e

    .line 92
    check-cast p1, Landroidx/activity/j;

    .line 94
    goto :goto_5f

    .line 95
    :cond_5e
    const/4 p1, 0x0

    .line 96
    :goto_5f
    if-nez p1, :cond_62

    .line 98
    goto :goto_72

    .line 99
    :cond_62
    invoke-interface {p1}, Landroidx/activity/j;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/m;

    .line 106
    move-result-object p2

    .line 107
    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    .line 109
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p1, p2, v0}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/m;Landroidx/activity/h;)V

    .line 115
    :goto_72
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .registers 7
    .param p1  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 4
    if-nez p1, :cond_83

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object p1

    .line 10
    sget v0, Landroidx/preference/l;->preferences_header:I

    .line 12
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->C(I)Landroidx/fragment/app/Fragment;

    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_7b

    .line 18
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    .line 20
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-gtz v0, :cond_1f

    .line 31
    goto :goto_5d

    .line 32
    :cond_1f
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    .line 40
    move-result v2

    .line 41
    :goto_28
    if-ge v0, v2, :cond_5d

    .line 43
    add-int/lit8 v3, v0, 0x1

    .line 45
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 52
    move-result-object v0

    .line 53
    const-string v4, "headerFragment.preferenc…reen.getPreference(index)"

    .line 55
    invoke-static {v0, v4}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    if-nez v4, :cond_41

    .line 64
    move v0, v3

    .line 65
    goto :goto_28

    .line 66
    :cond_41
    invoke-virtual {v0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_48

    .line 72
    goto :goto_5d

    .line 73
    :cond_48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->I()Landroidx/fragment/app/p;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/p;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 92
    move-result-object p1

    .line 93
    goto :goto_5e

    .line 94
    :cond_5d
    :goto_5d
    move-object p1, v1

    .line 95
    :goto_5e
    if-nez p1, :cond_61

    .line 97
    goto :goto_83

    .line 98
    :cond_61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 101
    move-result-object v0

    .line 102
    const-string v2, "childFragmentManager"

    .line 104
    invoke-static {v0, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v2, Landroidx/fragment/app/a;

    .line 109
    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, v2, Landroidx/fragment/app/b0;->r:Z

    .line 115
    sget v0, Landroidx/preference/l;->preferences_detail:I

    .line 117
    invoke-virtual {v2, v0, p1, v1}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2}, Landroidx/fragment/app/a;->p()I

    .line 123
    goto :goto_83

    .line 124
    :cond_7b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 126
    const-string v0, "null cannot be cast to non-null type androidx.preference.PreferenceFragmentCompat"

    .line 128
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p1

    .line 132
    :cond_83
    :goto_83
    return-void
.end method
