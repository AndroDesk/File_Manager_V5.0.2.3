.class public Lmiuix/navigator/navigatorinfo/FragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "FragmentNavInfo.java"


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

    .line 4
    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getTag()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "miuix.secondaryContent"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    const-string v0, "miuix.content"

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->A()V

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p1, v2}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    .line 32
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->isFocused()Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_26

    .line 38
    return v1

    .line 39
    :cond_26
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, p1}, La/a;->d(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/a;

    .line 46
    move-result-object p1

    .line 47
    sget v1, Lmiuix/navigator/R$id;->content_decor:I

    .line 49
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1, v3, v4}, Landroidx/fragment/app/b0;->e(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p1, v1, v3, v0}, Landroidx/fragment/app/b0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()I

    .line 67
    return v2
.end method
