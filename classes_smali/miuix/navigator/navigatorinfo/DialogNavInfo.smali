.class public Lmiuix/navigator/navigatorinfo/DialogNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "DialogNavInfo.java"


# instance fields
.field private final mDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>()V

    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogNavInfo;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 2

    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogNavInfo;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
