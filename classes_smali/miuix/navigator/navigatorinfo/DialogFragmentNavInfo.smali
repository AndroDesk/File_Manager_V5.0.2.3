.class public Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "DialogFragmentNavInfo.java"


# instance fields
.field private final mDialog:Landroidx/fragment/app/DialogFragment;

.field private final mDialogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;-><init>(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>()V

    .line 3
    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 4
    iput-object p2, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialogTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 4

    .line 1
    check-cast p1, Lmiuix/navigator/NavigatorImpl;

    .line 3
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 13
    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialogTag:Ljava/lang/String;

    .line 15
    if-nez v1, :cond_12

    .line 17
    const-string v1, "miuix:navigatorDialogFragment"

    .line 19
    :cond_12
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x0

    .line 23
    return p1
.end method
