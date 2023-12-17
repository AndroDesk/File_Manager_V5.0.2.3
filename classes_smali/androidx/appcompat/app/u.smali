.class public final Landroidx/appcompat/app/u;
.super Ljava/lang/Object;
.source "LayoutIncludeDetector.java"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_29

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_1e

    .line 7
    const/4 v0, 0x5

    .line 8
    if-eq p1, v0, :cond_14

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance p1, Ljava/util/ArrayDeque;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 p1, 0x200

    .line 26
    new-array p1, p1, [Ljava/lang/String;

    .line 28
    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    .line 36
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 41
    return-void

    .line 42
    :cond_29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p1, Ljava/util/HashMap;

    .line 47
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p2

    .line 3
    move v2, v0

    .line 4
    :goto_3
    add-int v3, p2, p3

    .line 6
    if-ge v1, v3, :cond_f

    .line 8
    mul-int/lit8 v2, v2, 0x1f

    .line 10
    aget-char v3, p1, v1

    .line 12
    add-int/2addr v2, v3

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_3

    .line 16
    :cond_f
    ushr-int/lit8 v1, v2, 0x14

    .line 18
    ushr-int/lit8 v3, v2, 0xc

    .line 20
    xor-int/2addr v1, v3

    .line 21
    xor-int/2addr v1, v2

    .line 22
    ushr-int/lit8 v2, v1, 0x7

    .line 24
    ushr-int/lit8 v3, v1, 0x4

    .line 26
    xor-int/2addr v2, v3

    .line 27
    xor-int/2addr v1, v2

    .line 28
    iget-object v2, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 30
    move-object v3, v2

    .line 31
    check-cast v3, [Ljava/lang/String;

    .line 33
    array-length v3, v3

    .line 34
    const/4 v4, 0x1

    .line 35
    sub-int/2addr v3, v4

    .line 36
    and-int/2addr v1, v3

    .line 37
    check-cast v2, [Ljava/lang/String;

    .line 39
    aget-object v2, v2, v1

    .line 41
    if-eqz v2, :cond_46

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 46
    move-result v3

    .line 47
    if-eq v3, p3, :cond_31

    .line 49
    goto :goto_43

    .line 50
    :cond_31
    move v3, v0

    .line 51
    :goto_32
    if-ge v3, p3, :cond_42

    .line 53
    add-int v5, p2, v3

    .line 55
    aget-char v5, p1, v5

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v6

    .line 61
    if-eq v5, v6, :cond_3f

    .line 63
    goto :goto_43

    .line 64
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    .line 66
    goto :goto_32

    .line 67
    :cond_42
    move v0, v4

    .line 68
    :goto_43
    if-eqz v0, :cond_46

    .line 70
    return-object v2

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/String;

    .line 73
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 76
    iget-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 78
    check-cast p1, [Ljava/lang/String;

    .line 80
    aput-object v0, p1, v1

    .line 82
    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)F
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 11
    if-nez v0, :cond_d

    .line 13
    return v1

    .line 14
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/util/HashMap;

    .line 24
    if-eqz p2, :cond_30

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, [F

    .line 39
    if-nez p1, :cond_29

    .line 41
    return v1

    .line 42
    :cond_29
    array-length p2, p1

    .line 43
    if-lez p2, :cond_30

    .line 45
    const/4 p2, 0x0

    .line 46
    aget p1, p1, p2

    .line 48
    return p1

    .line 49
    :cond_30
    :goto_30
    return v1
.end method
