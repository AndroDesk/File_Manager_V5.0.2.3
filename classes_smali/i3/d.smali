.class public final Li3/d;
.super Ljava/lang/Object;
.source "CollectionToArray.kt"


# static fields
.field public static final a:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sput-object v0, Li3/d;->a:[Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static final a(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 5
    .param p0  # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "collection"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    :goto_b
    sget-object p0, Li3/d;->a:[Ljava/lang/Object;

    .line 14
    goto :goto_5d

    .line 15
    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_19

    .line 25
    goto :goto_b

    .line 26
    :cond_19
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1c
    add-int/lit8 v2, v1, 0x1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    aput-object v3, v0, v1

    .line 37
    array-length v1, v0

    .line 38
    if-lt v2, v1, :cond_4e

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2f

    .line 46
    move-object p0, v0

    .line 47
    goto :goto_5d

    .line 48
    :cond_2f
    mul-int/lit8 v1, v2, 0x3

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    ushr-int/lit8 v1, v1, 0x1

    .line 54
    const v3, 0x7ffffffd

    .line 57
    if-gt v1, v2, :cond_44

    .line 59
    if-ge v2, v3, :cond_3e

    .line 61
    move v1, v3

    .line 62
    goto :goto_44

    .line 63
    :cond_3e
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 65
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 68
    throw p0

    .line 69
    :cond_44
    :goto_44
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    const-string v1, "copyOf(result, newSize)"

    .line 75
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    goto :goto_5e

    .line 79
    :cond_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_5e

    .line 85
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 88
    move-result-object p0

    .line 89
    const-string v0, "copyOf(result, size)"

    .line 91
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :goto_5d
    return-object p0

    .line 95
    :cond_5e
    :goto_5e
    move v1, v2

    .line 96
    goto :goto_1c
.end method

.method public static final b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .param p0  # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "collection"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_17

    .line 17
    array-length p0, p1

    .line 18
    if-lez p0, :cond_86

    .line 20
    aput-object v1, p1, v2

    .line 22
    goto/16 :goto_86

    .line 24
    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_27

    .line 34
    array-length p0, p1

    .line 35
    if-lez p0, :cond_86

    .line 37
    aput-object v1, p1, v2

    .line 39
    goto :goto_86

    .line 40
    :cond_27
    array-length v3, p1

    .line 41
    if-gt v0, v3, :cond_2c

    .line 43
    move-object v0, p1

    .line 44
    goto :goto_3f

    .line 45
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    .line 59
    invoke-static {v0, v3}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    check-cast v0, [Ljava/lang/Object;

    .line 64
    :goto_3f
    add-int/lit8 v3, v2, 0x1

    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    aput-object v4, v0, v2

    .line 72
    array-length v2, v0

    .line 73
    if-lt v3, v2, :cond_71

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_52

    .line 81
    move-object p1, v0

    .line 82
    goto :goto_86

    .line 83
    :cond_52
    mul-int/lit8 v2, v3, 0x3

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 87
    ushr-int/lit8 v2, v2, 0x1

    .line 89
    const v4, 0x7ffffffd

    .line 92
    if-gt v2, v3, :cond_67

    .line 94
    if-ge v3, v4, :cond_61

    .line 96
    move v2, v4

    .line 97
    goto :goto_67

    .line 98
    :cond_61
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 100
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 103
    throw p0

    .line 104
    :cond_67
    :goto_67
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    const-string v2, "copyOf(result, newSize)"

    .line 110
    invoke-static {v0, v2}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    goto :goto_87

    .line 114
    :cond_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_87

    .line 120
    if-ne v0, p1, :cond_7c

    .line 122
    aput-object v1, p1, v3

    .line 124
    goto :goto_86

    .line 125
    :cond_7c
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    move-result-object p0

    .line 129
    const-string p1, "copyOf(result, size)"

    .line 131
    invoke-static {p0, p1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    move-object p1, p0

    .line 135
    :cond_86
    :goto_86
    return-object p1

    .line 136
    :cond_87
    :goto_87
    move v2, v3

    .line 137
    goto :goto_3f
.end method
