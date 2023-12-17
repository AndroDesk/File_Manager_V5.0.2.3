.class public final Lcom/micloud/midrive/R$xml;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static final micloud_push:I

.field public static final network_security_config:I

.field public static final standalone_badge:I

.field public static final standalone_badge_gravity_bottom_end:I

.field public static final standalone_badge_gravity_bottom_start:I

.field public static final standalone_badge_gravity_top_start:I

.field public static final standalone_badge_offset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f1d2d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->micloud_push:I

    const v0, 0x7f1d2d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->network_security_config:I

    const v0, 0x7f1d2d9a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->standalone_badge:I

    const v0, 0x7f1d2d9b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->standalone_badge_gravity_bottom_end:I

    const v0, 0x7f1d2d98

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->standalone_badge_gravity_bottom_start:I

    const v0, 0x7f1d2d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->standalone_badge_gravity_top_start:I

    const v0, 0x7f1d2d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/R$xml;->standalone_badge_offset:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
