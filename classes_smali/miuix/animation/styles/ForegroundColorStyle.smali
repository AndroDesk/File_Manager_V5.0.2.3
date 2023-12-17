.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source "ForegroundColorStyle.java"


# static fields
.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_ABSOLUTE:I = 0x2

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_CLEAR:I = 0x0

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_DEFAULT:I = 0x1

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_PADDING:I = 0x4

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_RELATIVE:I = 0x1008


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/styles/PropertyStyle;-><init>()V

    .line 4
    return-void
.end method

.method public static end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 15
    move-result-object p0

    .line 16
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 18
    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 20
    double-to-int p1, v0

    .line 21
    if-eqz p0, :cond_1f

    .line 23
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1f

    .line 29
    invoke-virtual {p0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    .line 32
    :cond_1f
    return-void
.end method

.method private static getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    .registers 2

    .line 1
    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Lmiuix/animation/ViewTarget;

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method private static isInvalid(Landroid/view/View;)Z
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    return p0
.end method

.method public static start(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 4

    .line 1
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 14
    iget p1, p1, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 16
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    .line 19
    move-result-object v0

    .line 20
    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    instance-of v1, p0, Ljava/lang/Float;

    .line 28
    if-nez v1, :cond_21

    .line 30
    instance-of v1, p0, Ljava/lang/Integer;

    .line 32
    if-eqz v1, :cond_2a

    .line 34
    :cond_21
    check-cast p0, Ljava/lang/Float;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->setHoverCorner(F)V

    .line 43
    :cond_2a
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    .line 46
    move-result p0

    .line 47
    const/4 v1, -0x1

    .line 48
    if-nez p0, :cond_35

    .line 50
    if-ne p1, v1, :cond_35

    .line 52
    const/4 p1, 0x1

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    if-ne p1, v1, :cond_38

    .line 56
    const/4 p1, 0x0

    .line 57
    :cond_38
    :goto_38
    and-int/lit8 p0, p1, 0x3

    .line 59
    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(I)V

    .line 62
    return-void
.end method
