.class public final Lq/b;
.super Ljava/lang/Object;


# static fields
.field public static final cardview_dark_background:I

.field public static final cardview_light_background:I

.field public static final cardview_shadow_end_color:I

.field public static final cardview_shadow_start_color:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0f2da9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/b;->cardview_dark_background:I

    const v0, 0x7f0f2dd6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/b;->cardview_light_background:I

    const v0, 0x7f0f2dd7

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/b;->cardview_shadow_end_color:I

    const v0, 0x7f0f2dd4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/b;->cardview_shadow_start_color:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
