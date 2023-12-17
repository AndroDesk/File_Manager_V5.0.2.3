.class public Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/FragmentNavInfo;
.source "UpdateFragmentNavInfo.java"


# instance fields
.field private final mBringToFront:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/FragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    iput-boolean p4, p0, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;->mBringToFront:Z

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 7

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix.secondaryContent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const-string v0, "miuix.content"

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-boolean v3, p0, Lmiuix/navigator/navigatorinfo/UpdateFragmentNavInfo;->mBringToFront:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    invoke-virtual {v1, v4}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    :cond_2e
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_3e

    check-cast v0, Lmiuix/appcompat/app/Fragment;

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/Fragment;->onUpdateArguments(Landroid/os/Bundle;)V

    return v4

    :cond_3e
    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/a;

    invoke-virtual {v1}, Landroidx/fragment/app/a;->d()I

    :cond_49
    invoke-super {p0, p1}, Lmiuix/navigator/navigatorinfo/FragmentNavInfo;->onNavigate(Lmiuix/navigator/Navigator;)Z

    move-result p1

    return p1
.end method
