.class public interface abstract Lmiuix/navigator/NavigatorFragmentListener;
.super Ljava/lang/Object;
.source "NavigatorFragmentListener.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .registers 4
    .param p0  # I
        .annotation build Lmiuix/navigator/Visibility;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    goto :goto_21

    :cond_10
    const-string v1, "fully visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_16
    const-string v1, "partial visible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_1c
    const-string v1, "invisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_2a

    const-string p0, "(masked)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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
