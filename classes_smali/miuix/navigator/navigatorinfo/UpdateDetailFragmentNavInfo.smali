.class public Lmiuix/navigator/navigatorinfo/UpdateDetailFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;
.source "UpdateDetailFragmentNavInfo.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 5

    const-string v0, "miuix.secondaryContent"

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v2

    if-nez v2, :cond_29

    check-cast v0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    return p1

    :cond_29
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v2, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()I

    :cond_34
    invoke-super {p0, p1}, Lmiuix/navigator/navigatorinfo/DetailFragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    move-result p1

    return p1
.end method
