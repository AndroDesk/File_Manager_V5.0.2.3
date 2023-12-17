.class public Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/FragmentNavInfo;
.source "UpdateFragmentNavInfo.java"


# instance fields
.field private final mBringToFront:Z


# direct methods
.method public constructor <init>(ILjava/lang/Class;Landroid/os/Bundle;)V
    .registers 5
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;Z)V

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
    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/FragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 3
    iput-boolean p4, p0, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;->mBringToFront:Z

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
    if-eqz v0, :cond_e

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_e
    const-string v0, "miuix.content"

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_49

    .line 39
    iget-boolean v3, p0, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;->mBringToFront:Z

    .line 41
    const/4 v4, 0x1

    .line 42
    if-eqz v3, :cond_2e

    .line 44
    invoke-virtual {v1, v4}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    .line 47
    :cond_2e
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3e

    .line 53
    check-cast v0, Lmiuix/appcompat/app/Fragment;

    .line 55
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    .line 62
    return v4

    .line 63
    :cond_3e
    new-instance v1, Landroidx/fragment/app/a;

    .line 65
    invoke-direct {v1, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 68
    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    .line 71
    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    .line 74
    :cond_49
    invoke-super {p0, p1}, Lmiuix/navigator/navigatorinfo/FragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    .line 77
    move-result p1

    .line 78
    return p1
.end method
