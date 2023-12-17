.class public final Landroidx/core/content/MimeTypeFilter;
.super Ljava/lang/Object;
.source "MimeTypeFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static matches(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "/"

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, p1, v3

    .line 6
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {p0, v5}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public static matches([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "/"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    array-length v2, p0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    aget-object v4, p0, v3

    .line 10
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-static {v5, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-object v4

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    return-object v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchesMany([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_6

    .line 4
    new-array p0, v0, [Ljava/lang/String;

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v2, "/"

    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    array-length v3, p0

    .line 19
    :goto_12
    if-ge v0, v3, :cond_26

    .line 21
    aget-object v4, p0, v0

    .line 23
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5, p1}, Landroidx/core/content/MimeTypeFilter;->mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_23

    .line 33
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 38
    goto :goto_12

    .line 39
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result p0

    .line 43
    new-array p0, p0, [Ljava/lang/String;

    .line 45
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    check-cast p0, [Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method private static mimeTypeAgainstFilter([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne v0, v1, :cond_4b

    .line 5
    const/4 v0, 0x0

    .line 6
    aget-object v2, p1, v0

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_43

    .line 14
    const/4 v2, 0x1

    .line 15
    aget-object v3, p1, v2

    .line 17
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_43

    .line 23
    array-length v3, p0

    .line 24
    if-eq v3, v1, :cond_1a

    .line 26
    return v0

    .line 27
    :cond_1a
    aget-object v1, p1, v0

    .line 29
    const-string v3, "*"

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2f

    .line 37
    aget-object v1, p1, v0

    .line 39
    aget-object v4, p0, v0

    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2f

    .line 47
    return v0

    .line 48
    :cond_2f
    aget-object v1, p1, v2

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_42

    .line 56
    aget-object p1, p1, v2

    .line 58
    aget-object p0, p0, v2

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_42

    .line 66
    return v0

    .line 67
    :cond_42
    return v2

    .line 68
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string p1, "Ill-formatted MIME type filter. Type or subtype empty."

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 76
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string p1, "Ill-formatted MIME type filter. Must be type/subtype."

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
.end method
