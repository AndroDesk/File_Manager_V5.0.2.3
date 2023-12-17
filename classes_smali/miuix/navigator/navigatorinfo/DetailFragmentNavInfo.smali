.class public Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "DetailFragmentNavInfo.java"


# instance fields
.field private mSaveToBackStack:Z


# direct methods
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

    .line 1
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

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 3
    iput-boolean p4, p0, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->mSaveToBackStack:Z

    return-void
.end method


# virtual methods
.method public isSaveToBackStack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->mSaveToBackStack:Z

    .line 3
    return v0
.end method

.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 12

    .line 1
    const-string v0, "miuix.secondaryContent"

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->F()I

    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-nez v3, :cond_14

    .line 19
    move v3, v5

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v3, v4

    .line 22
    :goto_15
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 25
    move-result-object v6

    .line 26
    sget-object v7, Lmiuix/navigator/Navigator$Mode;->NLC:Lmiuix/navigator/Navigator$Mode;

    .line 28
    if-eq v6, v7, :cond_24

    .line 30
    sget-object v7, Lmiuix/navigator/Navigator$Mode;->LC:Lmiuix/navigator/Navigator$Mode;

    .line 32
    if-ne v6, v7, :cond_22

    .line 34
    goto :goto_24

    .line 35
    :cond_22
    move v6, v4

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    :goto_24
    move v6, v5

    .line 38
    :goto_25
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_49

    .line 44
    if-nez v3, :cond_49

    .line 46
    iget-object v3, v2, Landroidx/fragment/app/FragmentManager;->d:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroidx/fragment/app/FragmentManager$j;

    .line 54
    invoke-interface {v3}, Landroidx/fragment/app/FragmentManager$j;->getId()I

    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3, v5}, Landroidx/fragment/app/FragmentManager;->T(IZ)V

    .line 61
    if-nez v6, :cond_46

    .line 63
    invoke-static {p1}, Lmiuix/navigator/FragmentAnimationHelper;->isSecondaryOnTopNow(Lmiuix/navigator/Navigator;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_46

    .line 69
    move v3, v5

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v3, v4

    .line 72
    :goto_47
    move v7, v5

    .line 73
    goto :goto_4b

    .line 74
    :cond_49
    move v7, v3

    .line 75
    move v3, v4

    .line 76
    :goto_4b
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 79
    if-eq p1, v1, :cond_7b

    .line 81
    const-string v8, "miuix.content"

    .line 83
    invoke-virtual {p1, v8}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    move-result-object v9

    .line 91
    invoke-virtual {v9, v8}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 94
    move-result-object v8

    .line 95
    instance-of v9, v8, Lmiuix/appcompat/app/Fragment;

    .line 97
    if-eqz v9, :cond_7b

    .line 99
    check-cast v8, Lmiuix/appcompat/app/Fragment;

    .line 101
    invoke-virtual {v8}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v9}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 108
    move-result-object v9

    .line 109
    instance-of v9, v9, Lmiuix/view/EditActionMode;

    .line 111
    if-eqz v9, :cond_7b

    .line 113
    invoke-virtual {v8}, Lmiuix/appcompat/app/Fragment;->getDelegate()Lmiuix/appcompat/app/FragmentDelegate;

    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v8}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionMode()Landroid/view/ActionMode;

    .line 120
    move-result-object v8

    .line 121
    invoke-virtual {v8}, Landroid/view/ActionMode;->finish()V

    .line 124
    :cond_7b
    invoke-virtual {v1, v5}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    .line 127
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->isFocused()Z

    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_85

    .line 133
    return v4

    .line 134
    :cond_85
    new-instance v1, Landroidx/fragment/app/a;

    .line 136
    invoke-direct {v1, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 139
    if-nez v3, :cond_a1

    .line 141
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_95

    .line 147
    if-eqz v6, :cond_95

    .line 149
    goto :goto_a1

    .line 150
    :cond_95
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_enter:I

    .line 152
    sget v5, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_open_exit:I

    .line 154
    sget v6, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    .line 156
    sget v8, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    .line 158
    invoke-virtual {v1, v2, v5, v6, v8}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 161
    goto :goto_a8

    .line 162
    :cond_a1
    :goto_a1
    sget v2, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_enter:I

    .line 164
    sget v5, Lmiuix/navigator/R$anim;->miuix_appcompat_fragment_transition_activity_close_exit:I

    .line 166
    invoke-virtual {v1, v4, v4, v2, v5}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 169
    :goto_a8
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->isSaveToBackStack()Z

    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_b0

    .line 175
    if-eqz v7, :cond_b4

    .line 177
    :cond_b0
    const/4 v2, 0x0

    .line 178
    invoke-virtual {v1, v2}, Landroidx/fragment/app/b0;->c(Ljava/lang/String;)V

    .line 181
    :cond_b4
    sget v2, Lmiuix/navigator/R$id;->secondary_content_decor:I

    .line 183
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v1, v2, v5, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 201
    if-eqz v7, :cond_d5

    .line 203
    if-nez v3, :cond_d5

    .line 205
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lmiuix/navigator/NavigatorImpl;

    .line 211
    invoke-static {p1}, Lmiuix/navigator/FragmentAnimationHelper;->hideContentFragment(Lmiuix/navigator/NavigatorImpl;)V

    .line 214
    :cond_d5
    return v4
.end method
