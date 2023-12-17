.class public Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "DialogFragmentNavInfo.java"


# instance fields
.field private final mDialog:Landroidx/fragment/app/DialogFragment;

.field private final mDialogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;-><init>(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/DialogFragment;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialog:Landroidx/fragment/app/DialogFragment;

    iput-object p2, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialogTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 4

    check-cast p1, Lmiuix/navigator/NavigatorImpl;

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getBaseNavigator()Lmiuix/navigator/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/navigator/Navigator;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialog:Landroidx/fragment/app/DialogFragment;

    iget-object v1, p0, Lmiuix/navigator/navigatorinfo/DialogFragmentNavInfo;->mDialogTag:Ljava/lang/String;

    if-nez v1, :cond_12

    const-string v1, "miuix:navigatorDialogFragment"

    :cond_12
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
