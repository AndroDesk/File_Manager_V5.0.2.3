.class public interface abstract Lmiuix/navigator/NavigatorFragmentListener;
.super Ljava/lang/Object;
.source "NavigatorFragmentListener.java"


# direct methods
.method public static visibilityToString(I)Ljava/lang/String;
    .registers 4
    .param p0  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    and-int/lit8 v1, p0, 0x3

    .line 8
    if-eqz v1, :cond_1c

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_16

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_10

    .line 16
    goto :goto_21

    .line 17
    :cond_10
    const-string v1, "fully visible"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    goto :goto_21

    .line 23
    :cond_16
    const-string v1, "partial visible"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    const-string v1, "invisible"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :goto_21
    and-int/lit8 p0, p0, 0x4

    .line 36
    if-eqz p0, :cond_2a

    .line 38
    const-string p0, "(masked)"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public onBottomNavigationDestroyed()V
    .registers 1

    return-void
.end method

.method public onBottomNavigationPrepared()V
    .registers 1

    return-void
.end method

.method public onBottomNavigationVisibilityChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onContentVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method

.method public onNavigationMenuSelected(Landroid/view/MenuItem;)V
    .registers 2

    return-void
.end method

.method public onNavigationVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method

.method public onNavigatorModeChanged(Lmiuix/navigator/Navigator$Mode;Lmiuix/navigator/Navigator$Mode;)V
    .registers 3

    return-void
.end method

.method public onSecondaryContentVisibilityChanged(I)V
    .registers 2
    .param p1  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    return-void
.end method
