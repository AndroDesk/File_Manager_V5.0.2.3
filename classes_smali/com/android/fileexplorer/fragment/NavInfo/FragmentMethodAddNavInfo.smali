.class public Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "FragmentMethodAddNavInfo.java"


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
    .registers 6

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
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    .line 25
    sget-object v2, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 27
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    .line 34
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {p1, v2, v3}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addOrShowFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/b0;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I

    .line 53
    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    .line 56
    move-result-object p1

    .line 57
    const-string v2, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    .line 59
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 62
    move-result p1

    .line 63
    xor-int/2addr p1, v0

    .line 64
    return p1
.end method
