.class public final Lcom/android/fileexplorer/util/FragmentManagerHelperKt;
.super Ljava/lang/Object;
.source "FragmentManagerHelper.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManagerHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mContentFragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static final addCustomAnimations(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/b0;
    .registers 8
    .param p0  # Landroidx/fragment/app/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/b0;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)",
            "Landroidx/fragment/app/b0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "<this>"

    .line 3
    invoke-static {p0, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string p2, "enterFragment"

    .line 8
    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const/4 p2, 0x1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p3, :cond_18

    .line 15
    const-string v1, "NAVIGATOR_FRAGMENT_WONT_SWITCH_ANIMATIONS"

    .line 17
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    move-result v1

    .line 21
    if-ne v1, p2, :cond_18

    .line 23
    move v1, p2

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, v0

    .line 26
    :goto_19
    if-nez v1, :cond_60

    .line 28
    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_26

    .line 34
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    .line 37
    move-result-object v1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 v1, 0x0

    .line 40
    :goto_27
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    .line 42
    if-eq v1, v2, :cond_39

    .line 44
    if-eqz p3, :cond_36

    .line 46
    const-string v1, "bundle_key_istobackstack"

    .line 48
    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 51
    move-result p3

    .line 52
    if-ne p3, p2, :cond_36

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move p2, v0

    .line 56
    :goto_37
    if-eqz p2, :cond_60

    .line 58
    :cond_39
    if-nez p4, :cond_60

    .line 60
    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getClassName()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    move-result-object p2

    .line 68
    invoke-static {p2, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_4d

    .line 74
    const p3, 0x7f010059

    .line 77
    goto :goto_50

    .line 78
    :cond_4d
    const p3, 0x7f01005a

    .line 81
    :goto_50
    invoke-static {p2, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_5a

    .line 87
    const p1, 0x7f01005c

    .line 90
    goto :goto_5d

    .line 91
    :cond_5a
    const p1, 0x7f01005b

    .line 94
    :goto_5d
    invoke-virtual {p0, p3, p1, v0, v0}, Landroidx/fragment/app/b0;->l(IIII)V

    .line 97
    :cond_60
    return-object p0
.end method

.method public static synthetic addCustomAnimations$default(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZILjava/lang/Object;)Landroidx/fragment/app/b0;
    .registers 7

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 3
    if-eqz p5, :cond_5

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/b0;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final addOrShowFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/b0;
    .registers 4
    .param p0  # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/b0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentFragment"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 15
    invoke-static {p0, p1, v0, p2}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addOrShowFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Landroidx/fragment/app/b0;Landroid/os/Bundle;)Landroidx/fragment/app/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final addOrShowFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Landroidx/fragment/app/b0;Landroid/os/Bundle;)Landroidx/fragment/app/b0;
    .registers 13
    .param p0  # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/fragment/app/b0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/b0;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/fragment/app/b0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentFragment"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object p0

    const-string v1, "this.fragments"

    invoke-static {p0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    .line 3
    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations$default(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZILjava/lang/Object;)Landroidx/fragment/app/b0;

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 6
    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 7
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v3

    if-nez v3, :cond_57

    .line 8
    check-cast v4, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v4, p3}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    :cond_57
    move v3, v1

    goto :goto_37

    .line 9
    :cond_59
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    invoke-virtual {p3, v5, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_6c

    .line 10
    :cond_68
    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_37

    .line 11
    :cond_6c
    :goto_6c
    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_37

    :cond_70
    if-nez v3, :cond_7e

    const p0, 0x7f0a0105

    .line 12
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string p3, "miuix.content"

    .line 13
    invoke-virtual {p2, p0, p1, p3, v1}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_7e
    return-object p2
.end method

.method public static final getGlobalNavigator()Lmiuix/navigator/Navigator;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final getMContentFragment()Landroidx/fragment/app/Fragment;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-object v0
.end method

.method public static final getTAG()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static final jump2PrevFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final jump2PrevFragment(Landroidx/fragment/app/Fragment;Z)V
    .registers 3
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V

    .line 9
    return-void
.end method

.method public static synthetic jump2PrevFragment$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .registers 4

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 3
    if-eqz p2, :cond_5

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 9
    return-void
.end method

.method public static final jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V
    .registers 7
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :try_start_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "parentFragmentManager"

    .line 12
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "manager.fragments"

    .line 21
    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->obtainPrevFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Landroidx/fragment/app/a;

    .line 30
    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    move-result-object v0

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 41
    move-result-object v4

    .line 42
    invoke-static {v2, v0, v3, v4, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/b0;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Landroidx/fragment/app/b0;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 49
    invoke-virtual {p1, v1}, Landroidx/fragment/app/b0;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 55
    goto :goto_42

    .line 56
    :catch_37
    move-exception p0

    .line 57
    sget-object p1, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "SearchContentFragment interceptBackPress: error"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :goto_42
    return-void
.end method

.method public static synthetic jump2PrevFragmentInner$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .registers 4

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 3
    if-eqz p2, :cond_5

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V

    .line 9
    return-void
.end method

.method public static final obtainPrevFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p0  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fragments"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-le v0, v1, :cond_19

    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x2

    .line 19
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 25
    goto :goto_27

    .line 26
    :cond_19
    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

    .line 28
    const-string v1, "obtainPrevFragment error: "

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 40
    :goto_27
    return-object p0
.end method

.method public static final registerContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "fragment"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object p0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    .line 8
    return-void
.end method

.method public static final setMContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 1
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    .line 3
    return-void
.end method

.method public static final unRegisterContentFragment()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    .line 4
    return-void
.end method
