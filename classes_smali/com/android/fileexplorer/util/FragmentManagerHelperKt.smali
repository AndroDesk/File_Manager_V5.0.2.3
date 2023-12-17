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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    const-string p2, "<this>"

    invoke-static {p0, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "enterFragment"

    invoke-static {p1, p2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_18

    const-string v1, "NAVIGATOR_FRAGMENT_WONT_SWITCH_ANIMATIONS"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, p2, :cond_18

    move v1, p2

    goto :goto_19

    :cond_18
    move v1, v0

    :goto_19
    if-nez v1, :cond_60

    invoke-static {}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->getGlobalNavigator()Lmiuix/navigator/Navigator;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getNavigationMode()Lmiuix/navigator/Navigator$Mode;

    move-result-object v1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    sget-object v2, Lmiuix/navigator/Navigator$Mode;->C:Lmiuix/navigator/Navigator$Mode;

    if-eq v1, v2, :cond_39

    if-eqz p3, :cond_36

    const-string v1, "bundle_key_istobackstack"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-ne p3, p2, :cond_36

    goto :goto_37

    :cond_36
    move p2, v0

    :goto_37
    if-eqz p2, :cond_60

    :cond_39
    if-nez p4, :cond_60

    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4d

    const p3, 0x7f010059

    goto :goto_50

    :cond_4d
    const p3, 0x7f01005a

    :goto_50
    invoke-static {p2, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const p1, 0x7f01005c

    goto :goto_5d

    :cond_5a
    const p1, 0x7f01005b

    :goto_5d
    invoke-virtual {p0, p3, p1, v0, v0}, Landroidx/fragment/app/b0;->l(IIII)V

    :cond_60
    return-object p0
.end method

.method public static synthetic addCustomAnimations$default(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZILjava/lang/Object;)Landroidx/fragment/app/b0;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/b0;

    move-result-object p0

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

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

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

    invoke-static {}, Lcom/android/fileexplorer/fragment/PhoneMainFragment;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

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

    invoke-static/range {v2 .. v8}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations$default(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;ZILjava/lang/Object;)Landroidx/fragment/app/b0;

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

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v3

    if-nez v3, :cond_57

    check-cast v4, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {v4, p3}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    :cond_57
    move v3, v1

    goto :goto_37

    :cond_59
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "NAVIGATOR_FRAGMENT_WONT_REMOVE_OTHER_FRAGMENTS"

    invoke-virtual {p3, v5, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_37

    :cond_6c
    :goto_6c
    invoke-virtual {p2, v4}, Landroidx/fragment/app/b0;->i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    goto :goto_37

    :cond_70
    if-nez v3, :cond_7e

    const p0, 0x7f0a0105

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string p3, "miuix.content"

    invoke-virtual {p2, p0, p1, p3, v1}, Landroidx/fragment/app/b0;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_7e
    return-object p2
.end method

.method public static final getGlobalNavigator()Lmiuix/navigator/Navigator;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    return-object v0
.end method

.method public static final getMContentFragment()Landroidx/fragment/app/Fragment;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public static final getTAG()Ljava/lang/String;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

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

    const-string v0, "fragment"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static synthetic jump2PrevFragment$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragment(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public static final jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V
    .registers 7
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "parentFragmentManager"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->J()Ljava/util/List;

    move-result-object v1

    const-string v2, "manager.fragments"

    invoke-static {v1, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->obtainPrevFragment(Ljava/util/List;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v0, v3, v4, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addCustomAnimations(Landroidx/fragment/app/b0;Ljava/lang/Class;Ljava/lang/Class;Landroid/os/Bundle;Z)Landroidx/fragment/app/b0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/b0;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/b0;->n(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    goto :goto_42

    :catch_37
    move-exception p0

    sget-object p1, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

    const-string v0, "SearchContentFragment interceptBackPress: error"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public static synthetic jump2PrevFragmentInner$default(Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->jump2PrevFragmentInner(Landroidx/fragment/app/Fragment;Z)V

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

    const-string v0, "fragments"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_19

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    goto :goto_27

    :cond_19
    sget-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->TAG:Ljava/lang/String;

    const-string v1, "obtainPrevFragment error: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    :goto_27
    return-object p0
.end method

.method public static final registerContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final setMContentFragment(Landroidx/fragment/app/Fragment;)V
    .registers 1
    .param p0  # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final unRegisterContentFragment()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->mContentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
