.class public final Lu/i;
.super Lu/c;
.source "Schlick.java"


# instance fields
.field public d:D

.field public e:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lu/c;-><init>()V

    iput-object p1, p0, Lu/c;->a:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lu/i;->d:D

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lu/i;->e:D

    return-void
.end method


# virtual methods
.method public final a(D)D
    .registers 11

    iget-wide v0, p0, Lu/i;->e:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_f

    mul-double v2, v0, p1

    iget-wide v4, p0, Lu/i;->d:D

    sub-double/2addr v0, p1

    mul-double/2addr v0, v4

    add-double/2addr v0, p1

    div-double/2addr v2, v0

    goto :goto_1e

    :cond_f
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double v4, v2, v0

    sub-double v6, p1, v2

    mul-double/2addr v6, v4

    sub-double/2addr v2, p1

    iget-wide v4, p0, Lu/i;->d:D

    sub-double/2addr v0, p1

    mul-double/2addr v0, v4

    sub-double/2addr v2, v0

    div-double v2, v6, v2

    :goto_1e
    return-wide v2
.end method

.method public final b(D)D
    .registers 13

    iget-wide v0, p0, Lu/i;->e:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_11

    iget-wide v2, p0, Lu/i;->d:D

    mul-double v4, v2, v0

    mul-double/2addr v4, v0

    sub-double/2addr v0, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    mul-double/2addr v0, v0

    div-double/2addr v4, v0

    goto :goto_22

    :cond_11
    iget-wide v2, p0, Lu/i;->d:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double v6, v0, v4

    mul-double v8, v6, v2

    mul-double/2addr v8, v6

    neg-double v2, v2

    sub-double/2addr v0, p1

    mul-double/2addr v0, v2

    sub-double/2addr v0, p1

    add-double/2addr v0, v4

    mul-double/2addr v0, v0

    div-double v4, v8, v0

    :goto_22
    return-wide v4
.end method
