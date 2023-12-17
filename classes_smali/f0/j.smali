.class public Lf0/j;
.super Lf0/p;
.source "TypefaceCompatApi21Impl.java"


# static fields
.field public static a:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/reflect/Method; = null

.field public static d:Ljava/lang/reflect/Method; = null

.field public static e:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf0/p;-><init>()V

    .line 4
    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;IZ)Z
    .registers 7

    .line 1
    invoke-static {}, Lf0/j;->h()V

    .line 4
    :try_start_3
    sget-object v0, Lf0/j;->c:Ljava/lang/reflect/Method;

    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 17
    aput-object p2, v1, p1

    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p2

    .line 24
    aput-object p2, v1, p1

    .line 26
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Boolean;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result p0
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_23} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_23} :catch_24

    .line 36
    return p0

    .line 37
    :catch_24
    move-exception p0

    .line 38
    goto :goto_27

    .line 39
    :catch_26
    move-exception p0

    .line 40
    :goto_27
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    throw p1
.end method

.method public static h()V
    .registers 9

    .line 1
    sget-boolean v0, Lf0/j;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lf0/j;->e:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_9
    const-string v2, "android.graphics.FontFamily"

    .line 12
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v4

    .line 23
    const-string v5, "addFontWeightStyle"

    .line 25
    const/4 v6, 0x3

    .line 26
    new-array v6, v6, [Ljava/lang/Class;

    .line 28
    const-class v7, Ljava/lang/String;

    .line 30
    aput-object v7, v6, v3

    .line 32
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 34
    aput-object v7, v6, v0

    .line 36
    const/4 v7, 0x2

    .line 37
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 39
    aput-object v8, v6, v7

    .line 41
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v5

    .line 45
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    const-class v7, Landroid/graphics/Typeface;

    .line 51
    const-string v8, "createFromFamiliesWithDefault"

    .line 53
    new-array v0, v0, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v0, v3

    .line 61
    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    move-result-object v1
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_40} :catch_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_40} :catch_43

    .line 65
    move-object v0, v1

    .line 66
    move-object v1, v4

    .line 67
    goto :goto_56

    .line 68
    :catch_43
    move-exception v0

    .line 69
    goto :goto_46

    .line 70
    :catch_45
    move-exception v0

    .line 71
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    const-string v3, "TypefaceCompatApi21Impl"

    .line 81
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    move-object v0, v1

    .line 85
    move-object v2, v0

    .line 86
    move-object v5, v2

    .line 87
    :goto_56
    sput-object v1, Lf0/j;->b:Ljava/lang/reflect/Constructor;

    .line 89
    sput-object v2, Lf0/j;->a:Ljava/lang/Class;

    .line 91
    sput-object v5, Lf0/j;->c:Ljava/lang/reflect/Method;

    .line 93
    sput-object v0, Lf0/j;->d:Ljava/lang/reflect/Method;

    .line 95
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 13

    .line 1
    invoke-static {}, Lf0/j;->h()V

    .line 4
    :try_start_3
    sget-object p4, Lf0/j;->b:Ljava/lang/reflect/Constructor;

    .line 6
    const/4 v0, 0x0

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p4
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_c} :catch_78
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_c} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_c} :catch_74

    .line 13
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 16
    move-result-object p2

    .line 17
    array-length v1, p2

    .line 18
    move v2, v0

    .line 19
    :goto_12
    const/4 v3, 0x0

    .line 20
    if-ge v2, v1, :cond_51

    .line 22
    aget-object v4, p2, v2

    .line 24
    invoke-static {p1}, Lf0/q;->d(Landroid/content/Context;)Ljava/io/File;

    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_1e

    .line 30
    return-object v3

    .line 31
    :cond_1e
    :try_start_1e
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    .line 34
    move-result v6

    .line 35
    invoke-static {v5, p3, v6}, Lf0/q;->b(Ljava/io/File;Landroid/content/res/Resources;I)Z

    .line 38
    move-result v6
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_26} :catch_4d
    .catchall {:try_start_1e .. :try_end_26} :catchall_48

    .line 39
    if-nez v6, :cond_2c

    .line 41
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 44
    return-object v3

    .line 45
    :cond_2c
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    .line 52
    move-result v7

    .line 53
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    .line 56
    move-result v4

    .line 57
    invoke-static {p4, v6, v7, v4}, Lf0/j;->g(Ljava/lang/Object;Ljava/lang/String;IZ)Z

    .line 60
    move-result v4
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_3c} :catch_4d
    .catchall {:try_start_2c .. :try_end_3c} :catchall_48

    .line 61
    if-nez v4, :cond_42

    .line 63
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 66
    return-object v3

    .line 67
    :cond_42
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_12

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 77
    throw p1

    .line 78
    :catch_4d
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 81
    return-object v3

    .line 82
    :cond_51
    invoke-static {}, Lf0/j;->h()V

    .line 85
    :try_start_54
    sget-object p1, Lf0/j;->a:Ljava/lang/Class;

    .line 87
    const/4 p2, 0x1

    .line 88
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1, v0, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 95
    sget-object p3, Lf0/j;->d:Ljava/lang/reflect/Method;

    .line 97
    new-array p2, p2, [Ljava/lang/Object;

    .line 99
    aput-object p1, p2, v0

    .line 101
    invoke-virtual {p3, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_6a} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_54 .. :try_end_6a} :catch_6b

    .line 107
    return-object p1

    .line 108
    :catch_6b
    move-exception p1

    .line 109
    goto :goto_6e

    .line 110
    :catch_6d
    move-exception p1

    .line 111
    :goto_6e
    new-instance p2, Ljava/lang/RuntimeException;

    .line 113
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    throw p2

    .line 117
    :catch_74
    move-exception p1

    .line 118
    goto :goto_79

    .line 119
    :catch_76
    move-exception p1

    .line 120
    goto :goto_79

    .line 121
    :catch_78
    move-exception p1

    .line 122
    :goto_79
    new-instance p2, Ljava/lang/RuntimeException;

    .line 124
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    throw p2
.end method

.method public b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-ge v0, v2, :cond_6

    .line 6
    return-object v1

    .line 7
    :cond_6
    invoke-virtual {p0, p3, p2}, Lf0/p;->f(I[Lj0/m;)Lj0/m;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p3

    .line 15
    :try_start_e
    iget-object p2, p2, Lj0/m;->a:Landroid/net/Uri;

    .line 17
    const-string v0, "r"

    .line 19
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1e

    .line 25
    if-eqz p2, :cond_1d

    .line 27
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_84

    .line 30
    :cond_1d
    return-object v1

    .line 31
    :cond_1e
    :try_start_1e
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v0, "/proc/self/fd/"

    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 44
    move-result v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p3

    .line 52
    invoke-static {p3}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p3

    .line 56
    invoke-static {p3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 59
    move-result-object v0

    .line 60
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    .line 62
    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4b

    .line 68
    new-instance v0, Ljava/io/File;

    .line 70
    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/system/ErrnoException; {:try_start_1e .. :try_end_48} :catch_4b
    .catchall {:try_start_1e .. :try_end_48} :catchall_49

    .line 73
    goto :goto_4c

    .line 74
    :catchall_49
    move-exception p1

    .line 75
    goto :goto_7b

    .line 76
    :catch_4b
    :cond_4b
    move-object v0, v1

    .line 77
    :goto_4c
    if-eqz v0, :cond_5d

    .line 79
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_55

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    .line 89
    move-result-object p1
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_49

    .line 90
    :try_start_59
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_84

    .line 93
    return-object p1

    .line 94
    :cond_5d
    :goto_5d
    :try_start_5d
    new-instance p3, Ljava/io/FileInputStream;

    .line 96
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_49

    .line 103
    :try_start_66
    invoke-virtual {p0, p1, p3}, Lf0/p;->c(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    .line 106
    move-result-object p1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_71

    .line 107
    :try_start_6a
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_49

    .line 110
    :try_start_6d
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_84

    .line 113
    return-object p1

    .line 114
    :catchall_71
    move-exception p1

    .line 115
    :try_start_72
    invoke-virtual {p3}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    .line 118
    goto :goto_7a

    .line 119
    :catchall_76
    move-exception p3

    .line 120
    :try_start_77
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    :goto_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_49

    .line 124
    :goto_7b
    :try_start_7b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    .line 127
    goto :goto_83

    .line 128
    :catchall_7f
    move-exception p2

    .line 129
    :try_start_80
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 132
    :goto_83
    throw p1
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_84

    .line 133
    :catch_84
    return-object v1
.end method
