.class public final Lf0/k;
.super Lf0/p;
.source "TypefaceCompatApi24Impl.java"


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "android.graphics.FontFamily"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 14
    move-result-object v3

    .line 15
    const-string v4, "addFontWeightStyle"

    .line 17
    const/4 v5, 0x5

    .line 18
    new-array v5, v5, [Ljava/lang/Class;

    .line 20
    const-class v6, Ljava/nio/ByteBuffer;

    .line 22
    aput-object v6, v5, v2

    .line 24
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 26
    const/4 v7, 0x1

    .line 27
    aput-object v6, v5, v7

    .line 29
    const/4 v8, 0x2

    .line 30
    const-class v9, Ljava/util/List;

    .line 32
    aput-object v9, v5, v8

    .line 34
    const/4 v8, 0x3

    .line 35
    aput-object v6, v5, v8

    .line 37
    const/4 v6, 0x4

    .line 38
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 40
    aput-object v8, v5, v6

    .line 42
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    const-class v6, Landroid/graphics/Typeface;

    .line 52
    const-string v8, "createFromFamiliesWithDefault"

    .line 54
    new-array v7, v7, [Ljava/lang/Class;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    move-result-object v5

    .line 60
    aput-object v5, v7, v2

    .line 62
    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    move-result-object v0
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_41} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_41} :catch_44

    .line 66
    move-object v2, v0

    .line 67
    move-object v0, v3

    .line 68
    goto :goto_57

    .line 69
    :catch_44
    move-exception v1

    .line 70
    goto :goto_47

    .line 71
    :catch_46
    move-exception v1

    .line 72
    :goto_47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    const-string v3, "TypefaceCompatApi24Impl"

    .line 82
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    move-object v1, v0

    .line 86
    move-object v2, v1

    .line 87
    move-object v4, v2

    .line 88
    :goto_57
    sput-object v0, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    .line 90
    sput-object v1, Lf0/k;->a:Ljava/lang/Class;

    .line 92
    sput-object v4, Lf0/k;->c:Ljava/lang/reflect/Method;

    .line 94
    sput-object v2, Lf0/k;->d:Ljava/lang/reflect/Method;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf0/p;-><init>()V

    .line 4
    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lf0/k;->c:Ljava/lang/reflect/Method;

    .line 4
    const/4 v2, 0x5

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    aput-object p1, v2, v0

    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p2

    .line 14
    aput-object p2, v2, p1

    .line 16
    const/4 p1, 0x2

    .line 17
    const/4 p2, 0x0

    .line 18
    aput-object p2, v2, p1

    .line 20
    const/4 p1, 0x3

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p2

    .line 25
    aput-object p2, v2, p1

    .line 27
    const/4 p1, 0x4

    .line 28
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object p2

    .line 32
    aput-object p2, v2, p1

    .line 34
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 44
    return p0

    .line 45
    :catch_2c
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 22

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    :try_start_2
    sget-object v0, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    .line 5
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_a} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_c

    .line 11
    move-object v3, v0

    .line 12
    goto :goto_d

    .line 13
    :catch_c
    move-object v3, v1

    .line 14
    :goto_d
    if-nez v3, :cond_10

    .line 16
    return-object v1

    .line 17
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 20
    move-result-object v4

    .line 21
    array-length v5, v4

    .line 22
    move v6, v2

    .line 23
    :goto_16
    if-ge v6, v5, :cond_79

    .line 25
    aget-object v7, v4, v6

    .line 27
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    .line 30
    move-result v0

    .line 31
    invoke-static/range {p1 .. p1}, Lf0/q;->d(Landroid/content/Context;)Ljava/io/File;

    .line 34
    move-result-object v8

    .line 35
    move-object/from16 v9, p3

    .line 37
    if-nez v8, :cond_27

    .line 39
    goto :goto_30

    .line 40
    :cond_27
    :try_start_27
    invoke-static {v8, v9, v0}, Lf0/q;->b(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 43
    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_74

    .line 44
    if-nez v0, :cond_32

    .line 46
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 49
    :goto_30
    move-object v0, v1

    .line 50
    goto :goto_5b

    .line 51
    :cond_32
    :try_start_32
    new-instance v10, Ljava/io/FileInputStream;

    .line 53
    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_57
    .catchall {:try_start_32 .. :try_end_37} :catchall_74

    .line 56
    :try_start_37
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 59
    move-result-object v11

    .line 60
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    .line 63
    move-result-wide v15

    .line 64
    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 66
    const-wide/16 v13, 0x0

    .line 68
    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 71
    move-result-object v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_4b

    .line 72
    :try_start_47
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_57
    .catchall {:try_start_47 .. :try_end_4a} :catchall_74

    .line 75
    goto :goto_58

    .line 76
    :catchall_4b
    move-exception v0

    .line 77
    move-object v11, v0

    .line 78
    :try_start_4d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    .line 81
    goto :goto_56

    .line 82
    :catchall_51
    move-exception v0

    .line 83
    move-object v10, v0

    .line 84
    :try_start_53
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :goto_56
    throw v11
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_74

    .line 88
    :catch_57
    move-object v0, v1

    .line 89
    :goto_58
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 92
    :goto_5b
    if-nez v0, :cond_5e

    .line 94
    return-object v1

    .line 95
    :cond_5e
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    .line 98
    move-result v8

    .line 99
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    .line 102
    move-result v10

    .line 103
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    .line 106
    move-result v7

    .line 107
    invoke-static {v3, v0, v8, v10, v7}, Lf0/k;->g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_71

    .line 113
    return-object v1

    .line 114
    :cond_71
    add-int/lit8 v6, v6, 0x1

    .line 116
    goto :goto_16

    .line 117
    :catchall_74
    move-exception v0

    .line 118
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 121
    throw v0

    .line 122
    :cond_79
    :try_start_79
    sget-object v0, Lf0/k;->a:Ljava/lang/Class;

    .line 124
    const/4 v4, 0x1

    .line 125
    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 132
    sget-object v3, Lf0/k;->d:Ljava/lang/reflect/Method;

    .line 134
    new-array v4, v4, [Ljava/lang/Object;

    .line 136
    aput-object v0, v4, v2

    .line 138
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Landroid/graphics/Typeface;
    :try_end_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_79 .. :try_end_8f} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_79 .. :try_end_8f} :catch_90

    .line 144
    move-object v1, v0

    .line 145
    :catch_90
    return-object v1
.end method

.method public final b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    sget-object v2, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    .line 5
    new-array v3, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v2
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_b

    .line 11
    goto :goto_c

    .line 12
    :catch_b
    move-object v2, v0

    .line 13
    :goto_c
    if-nez v2, :cond_f

    .line 15
    return-object v0

    .line 16
    :cond_f
    new-instance v3, Landroidx/collection/f;

    .line 18
    invoke-direct {v3}, Landroidx/collection/f;-><init>()V

    .line 21
    array-length v4, p2

    .line 22
    move v5, v1

    .line 23
    :goto_16
    if-ge v5, v4, :cond_3e

    .line 25
    aget-object v6, p2, v5

    .line 27
    iget-object v7, v6, Lj0/m;->a:Landroid/net/Uri;

    .line 29
    invoke-virtual {v3, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 35
    if-nez v8, :cond_2b

    .line 37
    invoke-static {p1, v7}, Lf0/q;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 40
    move-result-object v8

    .line 41
    invoke-virtual {v3, v7, v8}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2b
    if-nez v8, :cond_2e

    .line 46
    return-object v0

    .line 47
    :cond_2e
    iget v7, v6, Lj0/m;->b:I

    .line 49
    iget v9, v6, Lj0/m;->c:I

    .line 51
    iget-boolean v6, v6, Lj0/m;->d:Z

    .line 53
    invoke-static {v2, v8, v7, v9, v6}, Lf0/k;->g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_3b

    .line 59
    return-object v0

    .line 60
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    .line 62
    goto :goto_16

    .line 63
    :cond_3e
    :try_start_3e
    sget-object p1, Lf0/k;->a:Ljava/lang/Class;

    .line 65
    const/4 p2, 0x1

    .line 66
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 73
    sget-object v2, Lf0/k;->d:Ljava/lang/reflect/Method;

    .line 75
    new-array p2, p2, [Ljava/lang/Object;

    .line 77
    aput-object p1, p2, v1

    .line 79
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_54} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_54} :catch_55

    .line 85
    goto :goto_56

    .line 86
    :catch_55
    move-object p1, v0

    .line 87
    :goto_56
    if-nez p1, :cond_59

    .line 89
    return-object v0

    .line 90
    :cond_59
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method
