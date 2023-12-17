.class public final Lmiuix/theme/R$attr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static final actionIconDisabledAlpha:I

.field public static final actionIconHeight:I

.field public static final actionIconNormalAlpha:I

.field public static final actionIconPressedAlpha:I

.field public static final actionIconWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f0d2dda

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$attr;->actionIconDisabledAlpha:I

    const v0, 0x7f0d2ddb

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$attr;->actionIconHeight:I

    const v0, 0x7f0d2dd8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$attr;->actionIconNormalAlpha:I

    const v0, 0x7f0d2dd9

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$attr;->actionIconPressedAlpha:I

    const v0, 0x7f0d2dc6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/theme/R$attr;->actionIconWidth:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
