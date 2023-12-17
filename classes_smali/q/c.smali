.class public final Lq/c;
.super Ljava/lang/Object;


# static fields
.field public static final Base_CardView:I

.field public static final CardView:I

.field public static final CardView_Dark:I

.field public static final CardView_Light:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f1b2da5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/c;->Base_CardView:I

    const v0, 0x7f1b2c9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/c;->CardView:I

    const v0, 0x7f1b2c9d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/c;->CardView_Dark:I

    const v0, 0x7f1b2c99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lq/c;->CardView_Light:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
