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

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "addFontWeightStyle"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v8, 0x2

    const-class v9, Ljava/util/List;

    aput-object v9, v5, v8

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const/4 v6, 0x4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Landroid/graphics/Typeface;

    const-string v8, "createFromFamiliesWithDefault"

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_41} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_41} :catch_44

    move-object v2, v0

    move-object v0, v3

    goto :goto_57

    :catch_44
    move-exception v1

    goto :goto_47

    :catch_46
    move-exception v1

    :goto_47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TypefaceCompatApi24Impl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    :goto_57
    sput-object v0, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    sput-object v1, Lf0/k;->a:Ljava/lang/Class;

    sput-object v4, Lf0/k;->c:Ljava/lang/reflect/Method;

    sput-object v2, Lf0/k;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf0/p;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lf0/k;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 22

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    sget-object v0, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_a} :catch_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_c

    move-object v3, v0

    goto :goto_d

    :catch_c
    move-object v3, v1

    :goto_d
    if-nez v3, :cond_10

    return-object v1

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_16
    if-ge v6, v5, :cond_79

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v0

    invoke-static/range {p1 .. p1}, Lf0/q;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    move-object/from16 v9, p3

    if-nez v8, :cond_27

    goto :goto_30

    :cond_27
    :try_start_27
    invoke-static {v8, v9, v0}, Lf0/q;->b(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_74

    if-nez v0, :cond_32

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_30
    move-object v0, v1

    goto :goto_5b

    :cond_32
    :try_start_32
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_57
    .catchall {:try_start_32 .. :try_end_37} :catchall_74

    :try_start_37
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v15

    sget-object v12, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v13, 0x0

    invoke-virtual/range {v11 .. v16}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_4b

    :try_start_47
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_57
    .catchall {:try_start_47 .. :try_end_4a} :catchall_74

    goto :goto_58

    :catchall_4b
    move-exception v0

    move-object v11, v0

    :try_start_4d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_56

    :catchall_51
    move-exception v0

    move-object v10, v0

    :try_start_53
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw v11
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_74

    :catch_57
    move-object v0, v1

    :goto_58
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_5b
    if-nez v0, :cond_5e

    return-object v1

    :cond_5e
    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v10

    invoke-virtual {v7}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v7

    invoke-static {v3, v0, v8, v10, v7}, Lf0/k;->g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_71

    return-object v1

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :catchall_74
    move-exception v0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    throw v0

    :cond_79
    :try_start_79
    sget-object v0, Lf0/k;->a:Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v3, Lf0/k;->d:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_79 .. :try_end_8f} :catch_90
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_79 .. :try_end_8f} :catch_90

    move-object v1, v0

    :catch_90
    return-object v1
.end method

.method public final b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    sget-object v2, Lf0/k;->b:Ljava/lang/reflect/Constructor;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_a} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-object v2, v0

    :goto_c
    if-nez v2, :cond_f

    return-object v0

    :cond_f
    new-instance v3, Landroidx/collection/f;

    invoke-direct {v3}, Landroidx/collection/f;-><init>()V

    array-length v4, p2

    move v5, v1

    :goto_16
    if-ge v5, v4, :cond_3e

    aget-object v6, p2, v5

    iget-object v7, v6, Lj0/m;->a:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    if-nez v8, :cond_2b

    invoke-static {p1, v7}, Lf0/q;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    if-nez v8, :cond_2e

    return-object v0

    :cond_2e
    iget v7, v6, Lj0/m;->b:I

    iget v9, v6, Lj0/m;->c:I

    iget-boolean v6, v6, Lj0/m;->d:Z

    invoke-static {v2, v8, v7, v9, v6}, Lf0/k;->g(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v6

    if-nez v6, :cond_3b

    return-object v0

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_3e
    :try_start_3e
    sget-object p1, Lf0/k;->a:Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object v2, Lf0/k;->d:Ljava/lang/reflect/Method;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e .. :try_end_54} :catch_55
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    move-object p1, v0

    :goto_56
    if-nez p1, :cond_59

    return-object v0

    :cond_59
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
