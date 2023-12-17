.class public Lmiuix/animation/styles/ForegroundColorStyle;
.super Lmiuix/animation/styles/PropertyStyle;
.source "ForegroundColorStyle.java"


# static fields
.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_ABSOLUTE:I

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_CLEAR:I

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_DEFAULT:I

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_PADDING:I

.field public static final MIUIX_TOUCH_RECT_LOCATION_MODE_RELATIVE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/styles/ForegroundColorStyle;->MIUIX_TOUCH_RECT_LOCATION_MODE_ABSOLUTE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/styles/ForegroundColorStyle;->MIUIX_TOUCH_RECT_LOCATION_MODE_CLEAR:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/styles/ForegroundColorStyle;->MIUIX_TOUCH_RECT_LOCATION_MODE_DEFAULT:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/styles/ForegroundColorStyle;->MIUIX_TOUCH_RECT_LOCATION_MODE_PADDING:I

    const v0, 0x93d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/styles/ForegroundColorStyle;->MIUIX_TOUCH_RECT_LOCATION_MODE_RELATIVE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/animation/styles/PropertyStyle;-><init>()V

    return-void
.end method

.method public static end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V
    .registers 4

    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->get(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object p0

    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v0, p1, Lmiuix/animation/internal/AnimInfo;->value:D

    double-to-int p1, v0

    if-eqz p0, :cond_1f

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lmiuix/animation/styles/TintDrawable;->restoreOriginalDrawable()V

    :cond_1f
    return-void
.end method

.method private static getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;
    .registers 2

    instance-of v0, p0, Lmiuix/animation/ViewTarget;

    if-eqz v0, :cond_b

    check-cast p0, Lmiuix/animation/ViewTarget;

    invoke-virtual {p0}, Lmiuix/animation/ViewTarget;->getTargetObject()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

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

    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->getView(Lmiuix/animation/IAnimTarget;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/styles/ForegroundColorStyle;->isInvalid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object p1, p1, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget p1, p1, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    invoke-static {p0}, Lmiuix/animation/styles/TintDrawable;->setAndGet(Landroid/view/View;)Lmiuix/animation/styles/TintDrawable;

    move-result-object v0

    sget v1, Lmiuix/animation/R$id;->miuix_animation_tag_view_hover_corners:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_21

    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2a

    :cond_21
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->setHoverCorner(F)V

    :cond_2a
    invoke-static {}, Lmiuix/device/DeviceUtils;->getDeviceLevel()I

    move-result p0

    const/4 v1, -0x1

    if-nez p0, :cond_35

    if-ne p1, v1, :cond_35

    const/4 p1, 0x1

    goto :goto_38

    :cond_35
    if-ne p1, v1, :cond_38

    const/4 p1, 0x0

    :cond_38
    :goto_38
    and-int/lit8 p0, p1, 0x3

    invoke-virtual {v0, p0}, Lmiuix/animation/styles/TintDrawable;->initTintBuffer(I)V

    return-void
.end method
