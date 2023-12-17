.class public final Lu/i;
.super Lu/c;
.source "Schlick.java"


# instance fields
.field public d:D

.field public e:D


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
    iput-wide v3, p0, Lu/i;->d:D

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lu/i;->e:D

    .line 54
    return-void
.end method


# virtual methods
.method public final a(D)D
    .registers 11

    .line 1
    iget-wide v0, p0, Lu/i;->e:D

    .line 3
    cmpg-double v2, p1, v0

    .line 5
    if-gez v2, :cond_f

    .line 7
    mul-double v2, v0, p1

    .line 9
    iget-wide v4, p0, Lu/i;->d:D

    .line 11
    sub-double/2addr v0, p1

    .line 12
    mul-double/2addr v0, v4

    .line 13
    add-double/2addr v0, p1

    .line 14
    div-double/2addr v2, v0

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 18
    sub-double v4, v2, v0

    .line 20
    sub-double v6, p1, v2

    .line 22
    mul-double/2addr v6, v4

    .line 23
    sub-double/2addr v2, p1

    .line 24
    iget-wide v4, p0, Lu/i;->d:D

    .line 26
    sub-double/2addr v0, p1

    .line 27
    mul-double/2addr v0, v4

    .line 28
    sub-double/2addr v2, v0

    .line 29
    div-double v2, v6, v2

    .line 31
    :goto_1e
    return-wide v2
.end method

.method public final b(D)D
    .registers 13

    .line 1
    iget-wide v0, p0, Lu/i;->e:D

    .line 3
    cmpg-double v2, p1, v0

    .line 5
    if-gez v2, :cond_11

    .line 7
    iget-wide v2, p0, Lu/i;->d:D

    .line 9
    mul-double v4, v2, v0

    .line 11
    mul-double/2addr v4, v0

    .line 12
    sub-double/2addr v0, p1

    .line 13
    mul-double/2addr v0, v2

    .line 14
    add-double/2addr v0, p1

    .line 15
    mul-double/2addr v0, v0

    .line 16
    div-double/2addr v4, v0

    .line 17
    goto :goto_22

    .line 18
    :cond_11
    iget-wide v2, p0, Lu/i;->d:D

    .line 20
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 22
    sub-double v6, v0, v4

    .line 24
    mul-double v8, v6, v2

    .line 26
    mul-double/2addr v8, v6

    .line 27
    neg-double v2, v2

    .line 28
    sub-double/2addr v0, p1

    .line 29
    mul-double/2addr v0, v2

    .line 30
    sub-double/2addr v0, p1

    .line 31
    add-double/2addr v0, v4

    .line 32
    mul-double/2addr v0, v0

    .line 33
    div-double v4, v8, v0

    .line 35
    :goto_22
    return-wide v4
.end method
