.class public Lmiuix/navigator/navigatorinfo/DialogNavInfo;
.super Lmiuix/navigator/navigatorinfo/NavigatorInfo;
.source "DialogNavInfo.java"


# instance fields
.field private final mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/navigatorinfo/NavigatorInfo;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogNavInfo;->mDialog:Landroid/app/Dialog;

    .line 6
    return-void
.end method


# virtual methods
.method public onNavigate(Lmiuix/navigator/Navigator;)Z
    .registers 2

    .line 1
    iget-object p1, p0, Lmiuix/navigator/navigatorinfo/DialogNavInfo;->mDialog:Landroid/app/Dialog;

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
