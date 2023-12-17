.class public abstract Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "AbstractFragmentNavInfo.java"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mFragment:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0, p1}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>(I)V

    iput-object p2, p0, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->mFragment:Ljava/lang/Class;

    iput-object p3, p0, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->mArgs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getArgs()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->mArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFragment()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lmiuix/appcompat/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/AbstractFragmentNavInfo;->mFragment:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract onNavigate(Lmiuix/navigator/Navigator;)Z
.end method

.method public shouldCloseOverlay()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
