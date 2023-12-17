.class public abstract Lj3/a;
.super Lkotlin/random/Random;
.source "PlatformRandom.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final nextBits(I)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 8
    move-result v0

    .line 9
    rsub-int/lit8 v1, p1, 0x20

    .line 11
    ushr-int/2addr v0, v1

    .line 12
    neg-int p1, p1

    .line 13
    shr-int/lit8 p1, p1, 0x1f

    .line 15
    and-int/2addr p1, v0

    .line 16
    return p1
.end method

.method public final nextBoolean()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final nextBytes([B)[B
    .registers 3
    .param p1  # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "array"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextBytes([B)V

    .line 13
    return-object p1
.end method

.method public final nextDouble()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final nextFloat()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final nextInt()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public final nextInt(I)I
    .registers 3

    .line 2
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public final nextLong()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lj3/a;->a()Ljava/util/Random;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
