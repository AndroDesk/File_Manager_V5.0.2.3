.class public final Ld1/c;
.super Ljava/lang/Object;


# static fields
.field public static final androidx_startup:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f182dba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ld1/c;->androidx_startup:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
