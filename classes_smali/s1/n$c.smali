.class public final Ls1/n$c;
.super Ljava/util/AbstractSet;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ls1/n;)V
    .registers 2

    iput-object p1, p0, Ls1/n$c;->a:Ls1/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    invoke-virtual {v0}, Ls1/n;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ls1/n$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ls1/n$a;

    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    iget-object v2, p1, Ls1/n$a;->b:Ljava/lang/Object;

    iget-object v3, p1, Ls1/n$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ls1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;

    move-result-object v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    iget-object p1, p1, Ls1/n$a;->d:Ljava/lang/Object;

    iget-object v0, v0, Ls1/n$a;->d:Ljava/lang/Object;

    if-nez p1, :cond_1f

    if-nez v0, :cond_23

    const/4 v1, 0x1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_23
    :goto_23
    return v1
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    iget v0, v0, Ls1/n;->c:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ls1/n$b;

    invoke-direct {v1, v0}, Ls1/n$b;-><init>(Ls1/n;)V

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 13

    instance-of v0, p1, Ls1/n$a;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    check-cast p1, Ls1/n$a;

    iget-object v2, p1, Ls1/n$a;->b:Ljava/lang/Object;

    iget-object p1, p1, Ls1/n$a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2e

    if-nez p1, :cond_2e

    iget p1, v0, Ls1/n;->d:I

    iget-object v2, v0, Ls1/n;->f:[Ls1/n$a;

    aget-object v5, v2, p1

    if-eqz v5, :cond_79

    aput-object v3, v2, p1

    iget p1, v0, Ls1/n;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Ls1/n;->c:I

    iget p1, v0, Ls1/n;->e:I

    add-int/2addr p1, v4

    iput p1, v0, Ls1/n;->e:I

    move-object v3, v5

    goto :goto_79

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v6, v5

    const v5, 0x7fffffff

    and-int/2addr v5, v6

    iget v7, v0, Ls1/n;->d:I

    rem-int/2addr v5, v7

    iget-object v7, v0, Ls1/n;->f:[Ls1/n$a;

    aget-object v7, v7, v5

    move-object v8, v7

    :goto_43
    if-eqz v7, :cond_79

    iget v9, v7, Ls1/n$a;->a:I

    if-ne v6, v9, :cond_73

    iget-object v9, v7, Ls1/n$a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    iget-object v9, v7, Ls1/n$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_73

    if-ne v8, v7, :cond_62

    iget-object p1, v0, Ls1/n;->f:[Ls1/n$a;

    iget-object v2, v7, Ls1/n$a;->e:Ls1/n$a;

    aput-object v2, p1, v5

    goto :goto_66

    :cond_62
    iget-object p1, v7, Ls1/n$a;->e:Ls1/n$a;

    iput-object p1, v8, Ls1/n$a;->e:Ls1/n$a;

    :goto_66
    iget p1, v0, Ls1/n;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Ls1/n;->c:I

    iget p1, v0, Ls1/n;->e:I

    add-int/2addr p1, v4

    iput p1, v0, Ls1/n;->e:I

    move-object v3, v7

    goto :goto_79

    :cond_73
    iget-object v8, v7, Ls1/n$a;->e:Ls1/n$a;

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    goto :goto_43

    :cond_79
    :goto_79
    if-eqz v3, :cond_7c

    move v1, v4

    :cond_7c
    return v1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    iget v0, v0, Ls1/n;->c:I

    return v0
.end method
