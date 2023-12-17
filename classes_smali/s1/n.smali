.class public final Ls1/n;
.super Ljava/util/AbstractMap;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/n$d;,
        Ls1/n$e;,
        Ls1/n$b;,
        Ls1/n$c;,
        Ls1/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Ls1/n$c;

.field public b:Ls1/n$e;

.field public c:I

.field public d:I

.field public e:I

.field public f:[Ls1/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ls1/n$a<",
            "TE;TK;TV;>;"
        }
    .end annotation
.end field

.field public g:F

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/high16 v0, 0x3f400000  # 0.75f

    iput v0, p0, Ls1/n;->g:F

    const/16 v1, 0x10

    iput v1, p0, Ls1/n;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Ls1/n;->h:I

    const/16 v0, 0x11

    new-array v0, v0, [Ls1/n$a;

    iput-object v0, p0, Ls1/n;->f:[Ls1/n$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ls1/n$a<",
            "TE;TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_b

    if-nez p2, :cond_b

    iget-object p1, p0, Ls1/n;->f:[Ls1/n$a;

    iget p2, p0, Ls1/n;->d:I

    aget-object p1, p1, p2

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    const v0, 0x7fffffff

    and-int/2addr v0, v1

    iget v2, p0, Ls1/n;->d:I

    rem-int/2addr v0, v2

    iget-object v2, p0, Ls1/n;->f:[Ls1/n$a;

    aget-object v0, v2, v0

    :goto_1f
    if-eqz v0, :cond_39

    iget v2, v0, Ls1/n$a;->a:I

    if-ne v1, v2, :cond_36

    iget-object v2, v0, Ls1/n$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Ls1/n$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-object v0

    :cond_36
    iget-object v0, v0, Ls1/n$a;->e:Ls1/n$a;

    goto :goto_1f

    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 14

    if-nez p1, :cond_29

    if-nez p2, :cond_29

    iget p1, p0, Ls1/n;->d:I

    iget-object p2, p0, Ls1/n;->f:[Ls1/n$a;

    aget-object v0, p2, p1

    if-nez v0, :cond_26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v0, Ls1/n$a;

    move-object v1, v0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ls1/n$a;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ls1/n$a;)V

    aput-object v0, p2, p1

    iget p1, p0, Ls1/n;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls1/n;->c:I

    iget p1, p0, Ls1/n;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls1/n;->e:I

    return-void

    :cond_26
    iput-object p3, v0, Ls1/n$a;->d:Ljava/lang/Object;

    return-void

    :cond_29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v3, v1, v0

    const v0, 0x7fffffff

    and-int v1, v3, v0

    iget v2, p0, Ls1/n;->d:I

    rem-int/2addr v1, v2

    iget-object v2, p0, Ls1/n;->f:[Ls1/n$a;

    aget-object v2, v2, v1

    :goto_3f
    if-eqz v2, :cond_5b

    iget v4, v2, Ls1/n$a;->a:I

    if-ne v3, v4, :cond_58

    iget-object v4, v2, Ls1/n$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    iget-object v4, v2, Ls1/n$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    iput-object p3, v2, Ls1/n$a;->d:Ljava/lang/Object;

    return-void

    :cond_58
    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    goto :goto_3f

    :cond_5b
    iget-object v8, p0, Ls1/n;->f:[Ls1/n$a;

    aget-object v7, v8, v1

    new-instance v9, Ls1/n$a;

    move-object v2, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Ls1/n$a;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ls1/n$a;)V

    aput-object v9, v8, v1

    iget p1, p0, Ls1/n;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls1/n;->c:I

    iget p2, p0, Ls1/n;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ls1/n;->e:I

    iget p2, p0, Ls1/n;->h:I

    if-le p1, p2, :cond_c2

    iget p1, p0, Ls1/n;->d:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    if-gez p1, :cond_87

    const p1, 0x7ffffffe

    :cond_87
    add-int/lit8 p2, p1, 0x1

    new-array p2, p2, [Ls1/n$a;

    const/4 p3, 0x0

    :goto_8c
    iget-object v1, p0, Ls1/n;->f:[Ls1/n$a;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_a8

    aget-object v1, v1, p3

    :goto_95
    if-eqz v1, :cond_a5

    iget-object v2, v1, Ls1/n$a;->e:Ls1/n$a;

    iget v3, v1, Ls1/n$a;->a:I

    and-int/2addr v3, v0

    rem-int/2addr v3, p1

    aget-object v4, p2, v3

    iput-object v4, v1, Ls1/n$a;->e:Ls1/n$a;

    aput-object v1, p2, v3

    move-object v1, v2

    goto :goto_95

    :cond_a5
    add-int/lit8 p3, p3, 0x1

    goto :goto_8c

    :cond_a8
    iget p3, p0, Ls1/n;->d:I

    aget-object p3, v1, p3

    aput-object p3, p2, p1

    iput p1, p0, Ls1/n;->d:I

    if-ne p1, v0, :cond_b9

    iget p3, p0, Ls1/n;->g:F

    const/high16 v0, 0x41200000  # 10.0f

    mul-float/2addr p3, v0

    iput p3, p0, Ls1/n;->g:F

    :cond_b9
    int-to-float p1, p1

    iget p3, p0, Ls1/n;->g:F

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Ls1/n;->h:I

    iput-object p2, p0, Ls1/n;->f:[Ls1/n$a;

    :cond_c2
    return-void
.end method

.method public final clear()V
    .registers 5

    iget v0, p0, Ls1/n;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ls1/n;->e:I

    const/4 v0, 0x0

    iput v0, p0, Ls1/n;->c:I

    iget-object v1, p0, Ls1/n;->f:[Ls1/n$a;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/n;->a:Ls1/n$c;

    if-nez v0, :cond_b

    new-instance v0, Ls1/n$c;

    invoke-direct {v0, p0}, Ls1/n$c;-><init>(Ls1/n;)V

    iput-object v0, p0, Ls1/n;->a:Ls1/n$c;

    :cond_b
    iget-object v0, p0, Ls1/n;->a:Ls1/n$c;

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Ls1/n;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Ls1/n;->c:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/n;->b:Ls1/n$e;

    if-nez v0, :cond_b

    new-instance v0, Ls1/n$e;

    invoke-direct {v0, p0}, Ls1/n$e;-><init>(Ls1/n;)V

    iput-object v0, p0, Ls1/n;->b:Ls1/n$e;

    :cond_b
    iget-object v0, p0, Ls1/n;->b:Ls1/n$e;

    return-object v0
.end method
