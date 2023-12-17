.class public final Lt2/b;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0xf

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 10
    move-result v1

    .line 11
    rsub-int/lit8 v1, v1, 0x20

    .line 13
    shl-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, v0, -0x1

    .line 16
    iput v1, p0, Lt2/b;->a:I

    .line 18
    int-to-float v1, v0

    .line 19
    const/high16 v2, 0x3f400000  # 0.75f

    .line 21
    mul-float/2addr v1, v2

    .line 22
    float-to-int v1, v1

    .line 23
    iput v1, p0, Lt2/b;->c:I

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lt2/b;->d:[Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lt2/b;->d:[Ljava/lang/Object;

    .line 3
    iget v1, p0, Lt2/b;->a:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v2

    .line 9
    const v3, -0x61c88647

    .line 12
    mul-int/2addr v2, v3

    .line 13
    ushr-int/lit8 v4, v2, 0x10

    .line 15
    xor-int/2addr v2, v4

    .line 16
    and-int/2addr v2, v1

    .line 17
    aget-object v4, v0, v2

    .line 19
    if-eqz v4, :cond_2a

    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 30
    and-int/2addr v2, v1

    .line 31
    aget-object v4, v0, v2

    .line 33
    if-nez v4, :cond_23

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1b

    .line 42
    return-void

    .line 43
    :cond_2a
    :goto_2a
    aput-object p1, v0, v2

    .line 45
    iget p1, p0, Lt2/b;->b:I

    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 49
    iput p1, p0, Lt2/b;->b:I

    .line 51
    iget v0, p0, Lt2/b;->c:I

    .line 53
    if-lt p1, v0, :cond_6f

    .line 55
    iget-object v0, p0, Lt2/b;->d:[Ljava/lang/Object;

    .line 57
    array-length v1, v0

    .line 58
    shl-int/lit8 v2, v1, 0x1

    .line 60
    add-int/lit8 v4, v2, -0x1

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    .line 64
    :goto_3f
    add-int/lit8 v6, p1, -0x1

    .line 66
    if-eqz p1, :cond_64

    .line 68
    :goto_43
    add-int/lit8 v1, v1, -0x1

    .line 70
    aget-object p1, v0, v1

    .line 72
    if-nez p1, :cond_4a

    .line 74
    goto :goto_43

    .line 75
    :cond_4a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 78
    move-result p1

    .line 79
    mul-int/2addr p1, v3

    .line 80
    ushr-int/lit8 v7, p1, 0x10

    .line 82
    xor-int/2addr p1, v7

    .line 83
    and-int/2addr p1, v4

    .line 84
    aget-object v7, v5, p1

    .line 86
    if-eqz v7, :cond_5e

    .line 88
    :cond_57
    add-int/lit8 p1, p1, 0x1

    .line 90
    and-int/2addr p1, v4

    .line 91
    aget-object v7, v5, p1

    .line 93
    if-nez v7, :cond_57

    .line 95
    :cond_5e
    aget-object v7, v0, v1

    .line 97
    aput-object v7, v5, p1

    .line 99
    move p1, v6

    .line 100
    goto :goto_3f

    .line 101
    :cond_64
    iput v4, p0, Lt2/b;->a:I

    .line 103
    int-to-float p1, v2

    .line 104
    const/high16 v0, 0x3f400000  # 0.75f

    .line 106
    mul-float/2addr p1, v0

    .line 107
    float-to-int p1, p1

    .line 108
    iput p1, p0, Lt2/b;->c:I

    .line 110
    iput-object v5, p0, Lt2/b;->d:[Ljava/lang/Object;

    .line 112
    :cond_6f
    return-void
.end method

.method public final b(II[Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget v0, p0, Lt2/b;->b:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lt2/b;->b:I

    .line 7
    :goto_6
    add-int/lit8 v0, p1, 0x1

    .line 9
    :goto_8
    and-int/2addr v0, p2

    .line 10
    aget-object v1, p3, v0

    .line 12
    if-nez v1, :cond_11

    .line 14
    const/4 p2, 0x0

    .line 15
    aput-object p2, p3, p1

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 22
    const v3, -0x61c88647

    .line 25
    mul-int/2addr v2, v3

    .line 26
    ushr-int/lit8 v3, v2, 0x10

    .line 28
    xor-int/2addr v2, v3

    .line 29
    and-int/2addr v2, p2

    .line 30
    if-gt p1, v0, :cond_24

    .line 32
    if-ge p1, v2, :cond_28

    .line 34
    if-le v2, v0, :cond_2c

    .line 36
    goto :goto_28

    .line 37
    :cond_24
    if-lt p1, v2, :cond_2c

    .line 39
    if-le v2, v0, :cond_2c

    .line 41
    :cond_28
    :goto_28
    aput-object v1, p3, p1

    .line 43
    move p1, v0

    .line 44
    goto :goto_6

    .line 45
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_8
.end method
