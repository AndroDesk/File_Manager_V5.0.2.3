.class public Lmiuix/navigator/app/MiuixNavHostFragment;
.super Lmiuix/navigator/NavHostFragment;
.source "MiuixNavHostFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/NavHostFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;
    .registers 4

    .line 1
    new-instance v0, Lmiuix/navigator/app/MiuixNavigatorImpl;

    .line 3
    invoke-direct {v0, p1, p2}, Lmiuix/navigator/app/MiuixNavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    .line 6
    return-object v0
.end method
