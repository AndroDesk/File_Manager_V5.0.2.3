.class public Lcom/android/fileexplorer/fragment/NavInfo/EmptyFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.source "EmptyFragmentNavInfo.java"


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
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
