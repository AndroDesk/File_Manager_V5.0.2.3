.class public abstract Lmiuix/navigator/NavigatorFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "NavigatorFragment.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigator()Lmiuix/navigator/Navigator;
    .registers 2

    invoke-static {p0}, Lmiuix/navigator/Navigator;->get(Landroidx/fragment/app/Fragment;)Lmiuix/navigator/Navigator;

    move-result-object v0

    return-object v0
.end method
