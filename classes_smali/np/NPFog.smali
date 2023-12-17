.class public Lnp/NPFog;
.super Ljava/lang/Object;


# static fields
.field static EM:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lnp/NPFog;->EM:[I

    return-void

    nop

    :array_c
    .array-data 4
        0x0
        0x90f77
        0x392
        0x66c2
        0x913
        0x2ff9
        0x65a8
        0x456
        0x7d9
        0x634
        0x148
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(I)I
    .registers 3
    .param p0, "n"  # I

    .line 11
    sget-object v0, Lnp/NPFog;->EM:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_f

    .line 12
    sget-object v1, Lnp/NPFog;->EM:[I

    aget v1, v1, v0

    xor-int/2addr p0, v1

    .line 11
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 14
    .end local v0  # "i":I
    :cond_f
    return p0
.end method
