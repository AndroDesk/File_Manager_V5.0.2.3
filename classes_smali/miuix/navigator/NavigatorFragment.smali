.class public abstract Lmiuix/navigator/NavigatorFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "NavigatorFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    .line 1
    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
