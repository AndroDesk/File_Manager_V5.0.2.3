.class public final Lmiuix/navigation/R$anim;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static final fragment_fast_out_extra_slow_in:I

.field public static final slide_in_left:I

.field public static final slide_in_right:I

.field public static final slide_out_left:I

.field public static final slide_out_right:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f082db8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$anim;->fragment_fast_out_extra_slow_in:I

    const v0, 0x7f082dcf

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$anim;->slide_in_left:I

    const v0, 0x7f082dcc

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$anim;->slide_in_right:I

    const v0, 0x7f082dcd

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$anim;->slide_out_left:I

    const v0, 0x7f082dca

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/navigation/R$anim;->slide_out_right:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
