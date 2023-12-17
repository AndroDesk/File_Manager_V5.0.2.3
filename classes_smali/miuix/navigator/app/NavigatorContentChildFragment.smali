.class public Lmiuix/navigator/app/NavigatorContentChildFragment;
.super Lmiuix/navigator/NavigatorFragment;
.source "NavigatorContentChildFragment.java"

# interfaces
.implements Lmiuix/navigator/NavigatorFragmentListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/navigator/NavigatorFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    sget p1, Lmiuix/navigator/R$style;->Theme_DayNight_ContentChild:I

    .line 6
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    .line 9
    return-void
.end method
