.class public final Landroidx/appcompat/app/u;
.super Ljava/lang/Object;
.source "LayoutIncludeDetector.java"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    return-void

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x200

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    return-void

    :cond_29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([CII)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :goto_3
    add-int v3, p2, p3

    if-ge v1, v3, :cond_f

    mul-int/lit8 v2, v2, 0x1f

    aget-char v3, p1, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    ushr-int/lit8 v1, v2, 0x14

    ushr-int/lit8 v3, v2, 0xc

    xor-int/2addr v1, v3

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v1, v3

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p3, :cond_31

    goto :goto_43

    :cond_31
    move v3, v0

    :goto_32
    if-ge v3, p3, :cond_42

    add-int v5, p2, v3

    aget-char v5, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3f

    goto :goto_43

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_42
    move v0, v4

    :goto_43
    if-eqz v0, :cond_46

    return-object v2

    :cond_46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p1, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    aput-object v0, p1, v1

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)F
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7fc00000  # Float.NaN

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/u;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_30

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_30

    :cond_20
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    if-nez p1, :cond_29

    return v1

    :cond_29
    array-length p2, p1

    if-lez p2, :cond_30

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_30
    :goto_30
    return v1
.end method
