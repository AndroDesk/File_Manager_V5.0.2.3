.class public Lmiuix/navigator/app/MiuixNavHostFragment;
.super Lmiuix/navigator/NavHostFragment;
.source "MiuixNavHostFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/NavHostFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createNavigator(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)Lmiuix/navigator/NavigatorImpl;
    .registers 4

    new-instance v0, Lmiuix/navigator/app/MiuixNavigatorImpl;

    invoke-direct {v0, p1, p2}, Lmiuix/navigator/app/MiuixNavigatorImpl;-><init>(Landroid/os/Bundle;Lmiuix/navigator/NavHostFragment;)V

    return-object v0
.end method
