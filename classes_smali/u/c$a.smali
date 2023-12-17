.class public final Lu/c$a;
.super Lu/c;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:D

.field public e:D

.field public f:D

.field public g:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lu/c;-><init>()V

    .line 4
    iput-object p1, p0, Lu/c;->a:Ljava/lang/String;

    .line 6
    const/16 v0, 0x28

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x2c

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 17
    move-result v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 20
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 31
    move-result-wide v3

    .line 32
    iput-wide v3, p0, Lu/c$a;->d:D

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    move-result-wide v2

    .line 52
    iput-wide v2, p0, Lu/c$a;->e:D

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 56
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 71
    move-result-wide v2

    .line 72
    iput-wide v2, p0, Lu/c$a;->f:D

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    const/16 v0, 0x29

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 93
    move-result-wide v0

    .line 94
    iput-wide v0, p0, Lu/c$a;->g:D

    .line 96
    return-void
.end method


# virtual methods
.method public final a(D)D
    .registers 11

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmpg-double v2, p1, v0

    .line 5
    if-gtz v2, :cond_7

    .line 7
    return-wide v0

    .line 8
    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 10
    cmpl-double v2, p1, v0

    .line 12
    if-ltz v2, :cond_e

    .line 14
    return-wide v0

    .line 15
    :cond_e
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 17
    move-wide v2, v0

    .line 18
    move-wide v4, v2

    .line 19
    :goto_12
    const-wide v6, 0x3f847ae147ae147bL  # 0.01

    .line 24
    cmpl-double v6, v2, v6

    .line 26
    if-lez v6, :cond_28

    .line 28
    invoke-virtual {p0, v4, v5}, Lu/c$a;->d(D)D

    .line 31
    move-result-wide v6

    .line 32
    mul-double/2addr v2, v0

    .line 33
    cmpg-double v6, v6, p1

    .line 35
    if-gez v6, :cond_26

    .line 37
    add-double/2addr v4, v2

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    sub-double/2addr v4, v2

    .line 40
    goto :goto_12

    .line 41
    :cond_28
    sub-double v0, v4, v2

    .line 43
    invoke-virtual {p0, v0, v1}, Lu/c$a;->d(D)D

    .line 46
    move-result-wide v6

    .line 47
    add-double/2addr v4, v2

    .line 48
    invoke-virtual {p0, v4, v5}, Lu/c$a;->d(D)D

    .line 51
    move-result-wide v2

    .line 52
    invoke-virtual {p0, v0, v1}, Lu/c$a;->e(D)D

    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {p0, v4, v5}, Lu/c$a;->e(D)D

    .line 59
    move-result-wide v4

    .line 60
    sub-double/2addr v4, v0

    .line 61
    sub-double/2addr p1, v6

    .line 62
    mul-double/2addr p1, v4

    .line 63
    sub-double/2addr v2, v6

    .line 64
    div-double/2addr p1, v2

    .line 65
    add-double/2addr p1, v0

    .line 66
    return-wide p1
.end method

.method public final b(D)D
    .registers 11

    .line 1
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 3
    move-wide v2, v0

    .line 4
    move-wide v4, v2

    .line 5
    :goto_4
    const-wide v6, 0x3f1a36e2eb1c432dL  # 1.0E-4

    .line 10
    cmpl-double v6, v2, v6

    .line 12
    if-lez v6, :cond_1a

    .line 14
    invoke-virtual {p0, v4, v5}, Lu/c$a;->d(D)D

    .line 17
    move-result-wide v6

    .line 18
    mul-double/2addr v2, v0

    .line 19
    cmpg-double v6, v6, p1

    .line 21
    if-gez v6, :cond_18

    .line 23
    add-double/2addr v4, v2

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    sub-double/2addr v4, v2

    .line 26
    goto :goto_4

    .line 27
    :cond_1a
    sub-double p1, v4, v2

    .line 29
    invoke-virtual {p0, p1, p2}, Lu/c$a;->d(D)D

    .line 32
    move-result-wide v0

    .line 33
    add-double/2addr v4, v2

    .line 34
    invoke-virtual {p0, v4, v5}, Lu/c$a;->d(D)D

    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p0, p1, p2}, Lu/c$a;->e(D)D

    .line 41
    move-result-wide p1

    .line 42
    invoke-virtual {p0, v4, v5}, Lu/c$a;->e(D)D

    .line 45
    move-result-wide v4

    .line 46
    sub-double/2addr v4, p1

    .line 47
    sub-double/2addr v2, v0

    .line 48
    div-double/2addr v4, v2

    .line 49
    return-wide v4
.end method

.method public final d(D)D
    .registers 9

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 3
    sub-double/2addr v0, p1

    .line 4
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 6
    mul-double/2addr v2, v0

    .line 7
    mul-double/2addr v0, v2

    .line 8
    mul-double/2addr v0, p1

    .line 9
    mul-double/2addr v2, p1

    .line 10
    mul-double/2addr v2, p1

    .line 11
    mul-double v4, p1, p1

    .line 13
    mul-double/2addr v4, p1

    .line 14
    iget-wide p1, p0, Lu/c$a;->d:D

    .line 16
    mul-double/2addr p1, v0

    .line 17
    iget-wide v0, p0, Lu/c$a;->f:D

    .line 19
    mul-double/2addr v0, v2

    .line 20
    add-double/2addr v0, p1

    .line 21
    add-double/2addr v0, v4

    .line 22
    return-wide v0
.end method

.method public final e(D)D
    .registers 9

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 3
    sub-double/2addr v0, p1

    .line 4
    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    .line 6
    mul-double/2addr v2, v0

    .line 7
    mul-double/2addr v0, v2

    .line 8
    mul-double/2addr v0, p1

    .line 9
    mul-double/2addr v2, p1

    .line 10
    mul-double/2addr v2, p1

    .line 11
    mul-double v4, p1, p1

    .line 13
    mul-double/2addr v4, p1

    .line 14
    iget-wide p1, p0, Lu/c$a;->e:D

    .line 16
    mul-double/2addr p1, v0

    .line 17
    iget-wide v0, p0, Lu/c$a;->g:D

    .line 19
    mul-double/2addr v0, v2

    .line 20
    add-double/2addr v0, p1

    .line 21
    add-double/2addr v0, v4

    .line 22
    return-wide v0
.end method
