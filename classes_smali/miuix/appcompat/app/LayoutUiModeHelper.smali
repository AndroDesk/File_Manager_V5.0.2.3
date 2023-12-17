.class public Lmiuix/appcompat/app/LayoutUiModeHelper;
.super Ljava/lang/Object;
.source "LayoutUiModeHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSetLayoutUiMode(Landroid/app/Activity;)V
    .registers 3

    .line 1
    instance-of v0, p0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1d

    .line 2
    move-object v0, p0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFloatingWindowTheme()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x8000000

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_1d
    if-eqz p0, :cond_28

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 7
    invoke-static {p0, v0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/content/Context;Landroid/view/Window;)V

    :cond_28
    return-void
.end method

.method public static autoSetLayoutUiMode(Landroid/content/Context;Landroid/view/Window;)V
    .registers 3

    .line 8
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    const/high16 v0, 0x8000000

    if-nez p0, :cond_c

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_f

    .line 10
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_f
    const/high16 p0, 0x4000000

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static isHideGestureLine(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "hide_gesture_line"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_e

    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_e
    return v1
.end method

.method public static isMiuiInFullScreenGestureMode(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method
