.class public Lmiuix/internal/util/AnimHelper;
.super Ljava/lang/Object;
.source "AnimHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimHelper"

.field private static volatile sIsDebugEnabled:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPressAnim(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-static {p0, v0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V

    return-void
.end method

.method public static addPressAnim(Landroid/view/View;Lmiuix/animation/IHoverStyle$HoverEffect;)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    new-array v0, v0, [Landroid/view/View;

    aput-object p0, v0, v2

    .line 3
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array v0, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, v0}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public static addPressAnimWithBg(Landroid/view/View;)V
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/view/View;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {v1, v3, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    .line 19
    move-result-object v1

    .line 20
    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 22
    const/high16 v5, 0x3f800000  # 1.0f

    .line 24
    invoke-interface {v1, v5, v4}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 27
    move-result-object v1

    .line 28
    new-array v0, v0, [Landroid/view/View;

    .line 30
    aput-object p0, v0, v2

    .line 32
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0, v3, v3, v3, v3}, Lmiuix/animation/IHoverStyle;->setTint(FFFF)Lmiuix/animation/IHoverStyle;

    .line 43
    move-result-object v0

    .line 44
    sget-object v4, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 46
    invoke-interface {v0, v4}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_45

    .line 60
    const v3, 0x3e19999a  # 0.15f

    .line 63
    invoke-interface {v1, v3, v5, v5, v5}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    .line 66
    invoke-interface {v0, v3, v5, v5, v5}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;

    .line 69
    goto :goto_4e

    .line 70
    :cond_45
    const v4, 0x3da3d70a  # 0.08f

    .line 73
    invoke-interface {v1, v4, v3, v3, v3}, Lmiuix/animation/ITouchStyle;->setBackgroundColor(FFFF)Lmiuix/animation/ITouchStyle;

    .line 76
    invoke-interface {v0, v4, v3, v3, v3}, Lmiuix/animation/IHoverStyle;->setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;

    .line 79
    :goto_4e
    new-array v3, v2, [Lmiuix/animation/base/AnimConfig;

    .line 81
    invoke-interface {v1, p0, v3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 84
    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    .line 86
    invoke-interface {v0, p0, v1}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 89
    return-void
.end method

.method public static isDialogDebugInAndroidUIThreadEnabled()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/internal/util/AnimHelper;->sIsDebugEnabled:Z

    .line 3
    return v0
.end method

.method public static loadDialogDebugInAndroidUIThreadEnabledFormSettings()Z
    .registers 4

    .line 1
    const-string v0, "AnimHelper"

    .line 3
    const-string v1, ""

    .line 5
    :try_start_4
    const-string v2, "log.tag.alertdialog.debug.enable"

    .line 7
    invoke-static {v2}, Lmiuix/animation/utils/CommonUtils;->readProp(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_f

    .line 11
    if-nez v2, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    move-object v1, v2

    .line 15
    goto :goto_15

    .line 16
    :catch_f
    move-exception v2

    .line 17
    const-string v3, "can not access property log.tag.alertdialog.enable, undebugable"

    .line 19
    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "Alert dialog debugEnable = "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "true"

    .line 44
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    sput-boolean v0, Lmiuix/internal/util/AnimHelper;->sIsDebugEnabled:Z

    .line 50
    sget-boolean v0, Lmiuix/internal/util/AnimHelper;->sIsDebugEnabled:Z

    .line 52
    return v0
.end method
