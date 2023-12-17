.class public Lmiuix/navigator/app/NavigatorContentChildFragment;
.super Lmiuix/navigator/NavigatorFragment;
.source "NavigatorContentChildFragment.java"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lmiuix/navigator/R$style;->Theme_DayNight_ContentChild:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method
