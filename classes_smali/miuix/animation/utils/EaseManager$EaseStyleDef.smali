.class public interface abstract Lmiuix/animation/utils/EaseManager$EaseStyleDef;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EaseStyleDef"
.end annotation


# static fields
.field public static final ACCELERATE:I

.field public static final ACCELERATE_DECELERATE:I

.field public static final ACCELERATE_INTERPOLATOR:I

.field public static final BOUNCE:I

.field public static final BOUNCE_EASE_IN:I

.field public static final BOUNCE_EASE_INOUT:I

.field public static final BOUNCE_EASE_OUT:I

.field public static final CUBIC_IN:I

.field public static final CUBIC_INOUT:I

.field public static final CUBIC_OUT:I

.field public static final DECELERATE:I

.field public static final DURATION:I

.field public static final EXPO_IN:I

.field public static final EXPO_INOUT:I

.field public static final EXPO_OUT:I

.field public static final FRICTION:I

.field public static final LINEAR:I

.field public static final QUAD_IN:I

.field public static final QUAD_INOUT:I

.field public static final QUAD_OUT:I

.field public static final QUART_IN:I

.field public static final QUART_INOUT:I

.field public static final QUART_OUT:I

.field public static final QUINT_IN:I

.field public static final QUINT_INOUT:I

.field public static final QUINT_OUT:I

.field public static final REBOUND:I

.field public static final SIN_IN:I

.field public static final SIN_INOUT:I

.field public static final SIN_OUT:I

.field public static final SPRING:I

.field public static final SPRING_PHY:I

.field public static final STOP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, -0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->ACCELERATE:I

    const v0, 0x92d83

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->ACCELERATE_DECELERATE:I

    const v0, 0x92d80

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->ACCELERATE_INTERPOLATOR:I

    const v0, 0x92d81

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->BOUNCE:I

    const v0, 0x92d8e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->BOUNCE_EASE_IN:I

    const v0, 0x92d8c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->BOUNCE_EASE_INOUT:I

    const v0, 0x92d8f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->BOUNCE_EASE_OUT:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->CUBIC_IN:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->CUBIC_INOUT:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->CUBIC_OUT:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->DECELERATE:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->DURATION:I

    const v0, 0x92d87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->EXPO_IN:I

    const v0, 0x92d85

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->EXPO_INOUT:I

    const v0, 0x92d84

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->EXPO_OUT:I

    const v0, -0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->FRICTION:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->LINEAR:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUAD_IN:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUAD_INOUT:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUAD_OUT:I

    const v0, 0x92d9e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUART_IN:I

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUART_INOUT:I

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUART_OUT:I

    const v0, 0x92d9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUINT_IN:I

    const v0, 0x92d9b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUINT_INOUT:I

    const v0, 0x92d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->QUINT_OUT:I

    const v0, -0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->REBOUND:I

    const v0, 0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->SIN_IN:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->SIN_INOUT:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->SIN_OUT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->SPRING:I

    const v0, -0x92d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->SPRING_PHY:I

    const v0, -0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/animation/utils/EaseManager$EaseStyleDef;->STOP:I

    return-void
.end method
