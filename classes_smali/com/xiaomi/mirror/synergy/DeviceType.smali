.class public interface abstract Lcom/xiaomi/mirror/synergy/DeviceType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CAR:I

.field public static final PAD:I

.field public static final PC:I

.field public static final PHONE:I

.field public static final SPEAKER:I

.field public static final TV:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->CAR:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->PAD:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->PC:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->PHONE:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->SPEAKER:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/mirror/synergy/DeviceType;->TV:I

    return-void
.end method
