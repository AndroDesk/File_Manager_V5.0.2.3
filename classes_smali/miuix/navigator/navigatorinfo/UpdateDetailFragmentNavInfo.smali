.class public Lmiuix/navigator/navigatorinfo/UpdateDetailFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;
.source "UpdateDetailFragmentNavInfo.java"


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
    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 5

    .line 1
    const-string v0, "miuix.secondaryContent"

    .line 3
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_34

    .line 25
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_29

    .line 31
    check-cast v0, Lmiuix/appcompat/app/Fragment;

    .line 33
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 40
    const/4 p1, 0x0

    .line 41
    return p1

    .line 42
    :cond_29
    new-instance v2, Landroidx/fragment/app/a;

    .line 44
    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 47
    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 50
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    .line 53
    :cond_34
    invoke-super {p0, p1}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    .line 56
    move-result p1

    .line 57
    return p1
.end method
