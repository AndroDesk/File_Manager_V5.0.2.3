.class public final Lk/b;
.super Ljava/lang/Object;


# static fields
.field public static final abc_vector_test:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x7f012d20

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lk/b;->abc_vector_test:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
