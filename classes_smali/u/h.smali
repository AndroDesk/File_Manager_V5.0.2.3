.class public final Lu/h;
.super Ljava/lang/Object;
.source "Oscillator.java"


# instance fields
.field public a:[F

.field public b:[D

.field public c:[D

.field public d:Lu/g;

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [F

    .line 7
    iput-object v1, p0, Lu/h;->a:[F

    .line 9
    new-array v0, v0, [D

    .line 11
    iput-object v0, p0, Lu/h;->b:[D

    .line 13
    return-void
.end method


# virtual methods
.method public final a(FD)V
    .registers 8

    .line 1
    iget-object v0, p0, Lu/h;->a:[F

    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v1, p0, Lu/h;->b:[D

    .line 8
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->binarySearch([DD)I

    .line 11
    move-result v1

    .line 12
    if-gez v1, :cond_10

    .line 14
    neg-int v1, v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :cond_10
    iget-object v2, p0, Lu/h;->b:[D

    .line 19
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Lu/h;->b:[D

    .line 25
    iget-object v2, p0, Lu/h;->a:[F

    .line 27
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 30
    move-result-object v2

    .line 31
    iput-object v2, p0, Lu/h;->a:[F

    .line 33
    new-array v2, v0, [D

    .line 35
    iput-object v2, p0, Lu/h;->c:[D

    .line 37
    iget-object v2, p0, Lu/h;->b:[D

    .line 39
    add-int/lit8 v3, v1, 0x1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    add-int/lit8 v0, v0, -0x1

    .line 44
    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lu/h;->b:[D

    .line 49
    aput-wide p2, v0, v1

    .line 51
    iget-object p2, p0, Lu/h;->a:[F

    .line 53
    aput p1, p2, v1

    .line 55
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "pos ="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lu/h;->b:[D

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " period="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lu/h;->a:[F

    .line 23
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method
