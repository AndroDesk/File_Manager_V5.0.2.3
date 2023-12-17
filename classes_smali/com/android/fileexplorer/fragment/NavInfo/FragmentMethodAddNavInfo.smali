.class public Lcom/android/fileexplorer/fragment/NavInfo/FragmentMethodAddNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "FragmentMethodAddNavInfo.java"


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

    invoke-direct {p0, p1, p2, p3}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;-><init>(ILjava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 6

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miuix.secondaryContent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const-string v0, "miuix.content"

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->getByTag(Ljava/lang/String;)Lmiuix/navigator/Navigator;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/navigator/Navigator;->requestFocus(Z)V

    sget-object v2, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;->getNavigationId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/util/FragmentNavInfo;->setFragmentNavId(I)V

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getFragment()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/fileexplorer/util/FragmentManagerHelperKt;->addOrShowFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/b0;->d()I

    invoke-virtual {p0}, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->getArgs()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "NAVIGATOR_FRAGMENT_WONT_REFRESH_NAVIGATION"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
