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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    const/high16 v0, 0x3f400000  # 0.75f

    .line 6
    iput v0, p0, Ls1/n;->g:F

    .line 8
    const/16 v1, 0x10

    .line 10
    iput v1, p0, Ls1/n;->d:I

    .line 12
    int-to-float v1, v1

    .line 13
    mul-float/2addr v1, v0

    .line 14
    float-to-int v0, v1

    .line 15
    iput v0, p0, Ls1/n;->h:I

    .line 17
    const/16 v0, 0x11

    .line 19
    new-array v0, v0, [Ls1/n$a;

    .line 21
    iput-object v0, p0, Ls1/n;->f:[Ls1/n$a;

    .line 23
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

    .line 1
    if-nez p1, :cond_b

    .line 3
    if-nez p2, :cond_b

    .line 5
    iget-object p1, p0, Ls1/n;->f:[Ls1/n$a;

    .line 7
    iget p2, p0, Ls1/n;->d:I

    .line 9
    aget-object p1, p1, p2

    .line 11
    return-object p1

    .line 12
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 19
    move-result v1

    .line 20
    add-int/2addr v1, v0

    .line 21
    const v0, 0x7fffffff

    .line 24
    and-int/2addr v0, v1

    .line 25
    iget v2, p0, Ls1/n;->d:I

    .line 27
    rem-int/2addr v0, v2

    .line 28
    iget-object v2, p0, Ls1/n;->f:[Ls1/n$a;

    .line 30
    aget-object v0, v2, v0

    .line 32
    :goto_1f
    if-eqz v0, :cond_39

    .line 34
    iget v2, v0, Ls1/n$a;->a:I

    .line 36
    if-ne v1, v2, :cond_36

    .line 38
    iget-object v2, v0, Ls1/n$a;->b:Ljava/lang/Object;

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_36

    .line 46
    iget-object v2, v0, Ls1/n$a;->c:Ljava/lang/Object;

    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_36

    .line 54
    return-object v0

    .line 55
    :cond_36
    iget-object v0, v0, Ls1/n$a;->e:Ls1/n$a;

    .line 57
    goto :goto_1f

    .line 58
    :cond_39
    const/4 p1, 0x0

    .line 59
    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 14

    .line 1
    if-nez p1, :cond_29

    .line 3
    if-nez p2, :cond_29

    .line 5
    iget p1, p0, Ls1/n;->d:I

    .line 7
    iget-object p2, p0, Ls1/n;->f:[Ls1/n$a;

    .line 9
    aget-object v0, p2, p1

    .line 11
    if-nez v0, :cond_26

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    new-instance v0, Ls1/n$a;

    .line 19
    move-object v1, v0

    .line 20
    move-object v5, p3

    .line 21
    invoke-direct/range {v1 .. v6}, Ls1/n$a;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ls1/n$a;)V

    .line 24
    aput-object v0, p2, p1

    .line 26
    iget p1, p0, Ls1/n;->c:I

    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 30
    iput p1, p0, Ls1/n;->c:I

    .line 32
    iget p1, p0, Ls1/n;->e:I

    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 36
    iput p1, p0, Ls1/n;->e:I

    .line 38
    return-void

    .line 39
    :cond_26
    iput-object p3, v0, Ls1/n$a;->d:Ljava/lang/Object;

    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 45
    move-result v0

    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 49
    move-result v1

    .line 50
    add-int v3, v1, v0

    .line 52
    const v0, 0x7fffffff

    .line 55
    and-int v1, v3, v0

    .line 57
    iget v2, p0, Ls1/n;->d:I

    .line 59
    rem-int/2addr v1, v2

    .line 60
    iget-object v2, p0, Ls1/n;->f:[Ls1/n$a;

    .line 62
    aget-object v2, v2, v1

    .line 64
    :goto_3f
    if-eqz v2, :cond_5b

    .line 66
    iget v4, v2, Ls1/n$a;->a:I

    .line 68
    if-ne v3, v4, :cond_58

    .line 70
    iget-object v4, v2, Ls1/n$a;->b:Ljava/lang/Object;

    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_58

    .line 78
    iget-object v4, v2, Ls1/n$a;->c:Ljava/lang/Object;

    .line 80
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_58

    .line 86
    iput-object p3, v2, Ls1/n$a;->d:Ljava/lang/Object;

    .line 88
    return-void

    .line 89
    :cond_58
    iget-object v2, v2, Ls1/n$a;->e:Ls1/n$a;

    .line 91
    goto :goto_3f

    .line 92
    :cond_5b
    iget-object v8, p0, Ls1/n;->f:[Ls1/n$a;

    .line 94
    aget-object v7, v8, v1

    .line 96
    new-instance v9, Ls1/n$a;

    .line 98
    move-object v2, v9

    .line 99
    move-object v4, p1

    .line 100
    move-object v5, p2

    .line 101
    move-object v6, p3

    .line 102
    invoke-direct/range {v2 .. v7}, Ls1/n$a;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ls1/n$a;)V

    .line 105
    aput-object v9, v8, v1

    .line 107
    iget p1, p0, Ls1/n;->c:I

    .line 109
    add-int/lit8 p1, p1, 0x1

    .line 111
    iput p1, p0, Ls1/n;->c:I

    .line 113
    iget p2, p0, Ls1/n;->e:I

    .line 115
    add-int/lit8 p2, p2, 0x1

    .line 117
    iput p2, p0, Ls1/n;->e:I

    .line 119
    iget p2, p0, Ls1/n;->h:I

    .line 121
    if-le p1, p2, :cond_c2

    .line 123
    iget p1, p0, Ls1/n;->d:I

    .line 125
    add-int/lit8 p1, p1, 0x1

    .line 127
    mul-int/lit8 p1, p1, 0x2

    .line 129
    add-int/lit8 p1, p1, 0x1

    .line 131
    if-gez p1, :cond_87

    .line 133
    const p1, 0x7ffffffe

    .line 136
    :cond_87
    add-int/lit8 p2, p1, 0x1

    .line 138
    new-array p2, p2, [Ls1/n$a;

    .line 140
    const/4 p3, 0x0

    .line 141
    :goto_8c
    iget-object v1, p0, Ls1/n;->f:[Ls1/n$a;

    .line 143
    array-length v2, v1

    .line 144
    add-int/lit8 v2, v2, -0x1

    .line 146
    if-ge p3, v2, :cond_a8

    .line 148
    aget-object v1, v1, p3

    .line 150
    :goto_95
    if-eqz v1, :cond_a5

    .line 152
    iget-object v2, v1, Ls1/n$a;->e:Ls1/n$a;

    .line 154
    iget v3, v1, Ls1/n$a;->a:I

    .line 156
    and-int/2addr v3, v0

    .line 157
    rem-int/2addr v3, p1

    .line 158
    aget-object v4, p2, v3

    .line 160
    iput-object v4, v1, Ls1/n$a;->e:Ls1/n$a;

    .line 162
    aput-object v1, p2, v3

    .line 164
    move-object v1, v2

    .line 165
    goto :goto_95

    .line 166
    :cond_a5
    add-int/lit8 p3, p3, 0x1

    .line 168
    goto :goto_8c

    .line 169
    :cond_a8
    iget p3, p0, Ls1/n;->d:I

    .line 171
    aget-object p3, v1, p3

    .line 173
    aput-object p3, p2, p1

    .line 175
    iput p1, p0, Ls1/n;->d:I

    .line 177
    if-ne p1, v0, :cond_b9

    .line 179
    iget p3, p0, Ls1/n;->g:F

    .line 181
    const/high16 v0, 0x41200000  # 10.0f

    .line 183
    mul-float/2addr p3, v0

    .line 184
    iput p3, p0, Ls1/n;->g:F

    .line 186
    :cond_b9
    int-to-float p1, p1

    .line 187
    iget p3, p0, Ls1/n;->g:F

    .line 189
    mul-float/2addr p1, p3

    .line 190
    float-to-int p1, p1

    .line 191
    iput p1, p0, Ls1/n;->h:I

    .line 193
    iput-object p2, p0, Ls1/n;->f:[Ls1/n$a;

    .line 195
    :cond_c2
    return-void
.end method

.method public final clear()V
    .registers 5

    .line 1
    iget v0, p0, Ls1/n;->e:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Ls1/n;->e:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Ls1/n;->c:I

    .line 10
    iget-object v1, p0, Ls1/n;->f:[Ls1/n$a;

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 17
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

    .line 1
    iget-object v0, p0, Ls1/n;->a:Ls1/n$c;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ls1/n$c;

    .line 7
    invoke-direct {v0, p0}, Ls1/n$c;-><init>(Ls1/n;)V

    .line 10
    iput-object v0, p0, Ls1/n;->a:Ls1/n$c;

    .line 12
    :cond_b
    iget-object v0, p0, Ls1/n;->a:Ls1/n$c;

    .line 14
    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Ls1/n;->c:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Ls1/n;->c:I

    .line 3
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

    .line 1
    iget-object v0, p0, Ls1/n;->b:Ls1/n$e;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ls1/n$e;

    .line 7
    invoke-direct {v0, p0}, Ls1/n$e;-><init>(Ls1/n;)V

    .line 10
    iput-object v0, p0, Ls1/n;->b:Ls1/n$e;

    .line 12
    :cond_b
    iget-object v0, p0, Ls1/n;->b:Ls1/n$e;

    .line 14
    return-object v0
.end method
