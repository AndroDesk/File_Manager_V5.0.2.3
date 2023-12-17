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
.method public constructor <init>(Ls1/n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ls1/n$c;->a:Ls1/n;

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 3
    invoke-virtual {v0}, Ls1/n;->clear()V

    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ls1/n$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    check-cast p1, Ls1/n$a;

    .line 9
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 11
    iget-object v2, p1, Ls1/n$a;->b:Ljava/lang/Object;

    .line 13
    iget-object v3, p1, Ls1/n$a;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v2, v3}, Ls1/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ls1/n$a;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return v1

    .line 22
    :cond_15
    iget-object p1, p1, Ls1/n$a;->d:Ljava/lang/Object;

    .line 24
    iget-object v0, v0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 26
    if-nez p1, :cond_1f

    .line 28
    if-nez v0, :cond_23

    .line 30
    const/4 v1, 0x1

    .line 31
    goto :goto_23

    .line 32
    :cond_1f
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v1

    .line 36
    :cond_23
    :goto_23
    return v1
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 3
    iget v0, v0, Ls1/n;->c:I

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
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

    .line 1
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Ls1/n$b;

    .line 8
    invoke-direct {v1, v0}, Ls1/n$b;-><init>(Ls1/n;)V

    .line 11
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 13

    .line 1
    instance-of v0, p1, Ls1/n$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 9
    check-cast p1, Ls1/n$a;

    .line 11
    iget-object v2, p1, Ls1/n$a;->b:Ljava/lang/Object;

    .line 13
    iget-object p1, p1, Ls1/n$a;->c:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x1

    .line 20
    if-nez v2, :cond_2e

    .line 22
    if-nez p1, :cond_2e

    .line 24
    iget p1, v0, Ls1/n;->d:I

    .line 26
    iget-object v2, v0, Ls1/n;->f:[Ls1/n$a;

    .line 28
    aget-object v5, v2, p1

    .line 30
    if-eqz v5, :cond_79

    .line 32
    aput-object v3, v2, p1

    .line 34
    iget p1, v0, Ls1/n;->c:I

    .line 36
    add-int/lit8 p1, p1, -0x1

    .line 38
    iput p1, v0, Ls1/n;->c:I

    .line 40
    iget p1, v0, Ls1/n;->e:I

    .line 42
    add-int/2addr p1, v4

    .line 43
    iput p1, v0, Ls1/n;->e:I

    .line 45
    move-object v3, v5

    .line 46
    goto :goto_79

    .line 47
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 50
    move-result v5

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 54
    move-result v6

    .line 55
    add-int/2addr v6, v5

    .line 56
    const v5, 0x7fffffff

    .line 59
    and-int/2addr v5, v6

    .line 60
    iget v7, v0, Ls1/n;->d:I

    .line 62
    rem-int/2addr v5, v7

    .line 63
    iget-object v7, v0, Ls1/n;->f:[Ls1/n$a;

    .line 65
    aget-object v7, v7, v5

    .line 67
    move-object v8, v7

    .line 68
    :goto_43
    if-eqz v7, :cond_79

    .line 70
    iget v9, v7, Ls1/n$a;->a:I

    .line 72
    if-ne v6, v9, :cond_73

    .line 74
    iget-object v9, v7, Ls1/n$a;->b:Ljava/lang/Object;

    .line 76
    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_73

    .line 82
    iget-object v9, v7, Ls1/n$a;->c:Ljava/lang/Object;

    .line 84
    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_73

    .line 90
    if-ne v8, v7, :cond_62

    .line 92
    iget-object p1, v0, Ls1/n;->f:[Ls1/n$a;

    .line 94
    iget-object v2, v7, Ls1/n$a;->e:Ls1/n$a;

    .line 96
    aput-object v2, p1, v5

    .line 98
    goto :goto_66

    .line 99
    :cond_62
    iget-object p1, v7, Ls1/n$a;->e:Ls1/n$a;

    .line 101
    iput-object p1, v8, Ls1/n$a;->e:Ls1/n$a;

    .line 103
    :goto_66
    iget p1, v0, Ls1/n;->c:I

    .line 105
    add-int/lit8 p1, p1, -0x1

    .line 107
    iput p1, v0, Ls1/n;->c:I

    .line 109
    iget p1, v0, Ls1/n;->e:I

    .line 111
    add-int/2addr p1, v4

    .line 112
    iput p1, v0, Ls1/n;->e:I

    .line 114
    move-object v3, v7

    .line 115
    goto :goto_79

    .line 116
    :cond_73
    iget-object v8, v7, Ls1/n$a;->e:Ls1/n$a;

    .line 118
    move-object v10, v8

    .line 119
    move-object v8, v7

    .line 120
    move-object v7, v10

    .line 121
    goto :goto_43

    .line 122
    :cond_79
    :goto_79
    if-eqz v3, :cond_7c

    .line 124
    move v1, v4

    .line 125
    :cond_7c
    return v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Ls1/n$c;->a:Ls1/n;

    .line 3
    iget v0, v0, Ls1/n;->c:I

    .line 5
    return v0
.end method
