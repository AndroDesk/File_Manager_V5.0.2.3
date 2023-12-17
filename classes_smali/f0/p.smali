.class public Lf0/p;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    return-void
.end method

.method public static e([Ljava/lang/Object;ILf0/p$a;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Lf0/p$a<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/16 v0, 0x190

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const/16 v0, 0x2bc

    .line 10
    :goto_9
    and-int/lit8 p1, p1, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz p1, :cond_11

    .line 16
    move p1, v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move p1, v1

    .line 19
    :goto_12
    array-length v3, p0

    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0x7fffffff

    .line 24
    move v6, v1

    .line 25
    :goto_18
    if-ge v6, v3, :cond_3a

    .line 27
    aget-object v7, p0, v6

    .line 29
    invoke-interface {p2, v7}, Lf0/p$a;->a(Ljava/lang/Object;)I

    .line 32
    move-result v8

    .line 33
    sub-int/2addr v8, v0

    .line 34
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 37
    move-result v8

    .line 38
    mul-int/lit8 v8, v8, 0x2

    .line 40
    invoke-interface {p2, v7}, Lf0/p$a;->b(Ljava/lang/Object;)Z

    .line 43
    move-result v9

    .line 44
    if-ne v9, p1, :cond_2f

    .line 46
    move v9, v1

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move v9, v2

    .line 49
    :goto_30
    add-int/2addr v8, v9

    .line 50
    if-eqz v4, :cond_35

    .line 52
    if-le v5, v8, :cond_37

    .line 54
    :cond_35
    move-object v4, v7

    .line 55
    move v5, v8

    .line 56
    :cond_37
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_18

    .line 59
    :cond_3a
    return-object v4
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 5

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 4

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    .line 1
    invoke-static {p1}, Lf0/q;->d(Landroid/content/Context;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object v0

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p2, p1}, Lf0/q;->c(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 12
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    .line 13
    if-nez p2, :cond_12

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 18
    return-object v0

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    return-object p2

    .line 31
    :catchall_1e
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 35
    throw p2

    .line 36
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    return-object v0
.end method

.method public d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .line 1
    invoke-static {p1}, Lf0/q;->d(Landroid/content/Context;)Ljava/io/File;

    .line 4
    move-result-object p1

    .line 5
    const/4 p4, 0x0

    .line 6
    if-nez p1, :cond_8

    .line 8
    return-object p4

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Lf0/q;->b(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 12
    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    .line 13
    if-nez p2, :cond_12

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 18
    return-object p4

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 26
    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 30
    return-object p2

    .line 31
    :catchall_1e
    move-exception p2

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 35
    throw p2

    .line 36
    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    return-object p4
.end method

.method public f(I[Lj0/m;)Lj0/m;
    .registers 4

    .line 1
    new-instance v0, Lf0/o;

    .line 3
    invoke-direct {v0}, Lf0/o;-><init>()V

    .line 6
    invoke-static {p2, p1, v0}, Lf0/p;->e([Ljava/lang/Object;ILf0/p$a;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lj0/m;

    .line 12
    return-object p1
.end method
