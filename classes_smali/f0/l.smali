.class public Lf0/l;
.super Lf0/j;
.source "TypefaceCompatApi26Impl.java"


# instance fields
.field public final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/reflect/Method;

.field public final i:Ljava/lang/reflect/Method;

.field public final j:Ljava/lang/reflect/Method;

.field public final k:Ljava/lang/reflect/Method;

.field public final l:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 10

    .line 1
    invoke-direct {p0}, Lf0/j;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    const-string v1, "android.graphics.FontFamily"

    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v1}, Lf0/l;->m(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object v4

    .line 22
    invoke-static {v1}, Lf0/l;->n(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v5

    .line 26
    new-array v6, v2, [Ljava/lang/Class;

    .line 28
    const-string v7, "freeze"

    .line 30
    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object v6

    .line 34
    new-array v2, v2, [Ljava/lang/Class;

    .line 36
    const-string v7, "abortCreation"

    .line 38
    invoke-virtual {v1, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v1}, Lf0/l;->o(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_2d} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_2d} :catch_31

    .line 46
    move-object v8, v1

    .line 47
    move-object v1, v0

    .line 48
    move-object v0, v8

    .line 49
    goto :goto_54

    .line 50
    :catch_31
    move-exception v1

    .line 51
    goto :goto_34

    .line 52
    :catch_33
    move-exception v1

    .line 53
    :goto_34
    const-string v2, "Unable to collect necessary methods for class "

    .line 55
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    const-string v3, "TypefaceCompatApi26Impl"

    .line 76
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    move-object v1, v0

    .line 80
    move-object v2, v1

    .line 81
    move-object v3, v2

    .line 82
    move-object v4, v3

    .line 83
    move-object v5, v4

    .line 84
    move-object v6, v5

    .line 85
    :goto_54
    iput-object v0, p0, Lf0/l;->f:Ljava/lang/Class;

    .line 87
    iput-object v3, p0, Lf0/l;->g:Ljava/lang/reflect/Constructor;

    .line 89
    iput-object v4, p0, Lf0/l;->h:Ljava/lang/reflect/Method;

    .line 91
    iput-object v5, p0, Lf0/l;->i:Ljava/lang/reflect/Method;

    .line 93
    iput-object v6, p0, Lf0/l;->j:Ljava/lang/reflect/Method;

    .line 95
    iput-object v2, p0, Lf0/l;->k:Ljava/lang/reflect/Method;

    .line 97
    iput-object v1, p0, Lf0/l;->l:Ljava/lang/reflect/Method;

    .line 99
    return-void
.end method

.method public static m(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 5
    const/4 v1, 0x0

    .line 6
    const-class v2, Landroid/content/res/AssetManager;

    .line 8
    aput-object v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v2, Ljava/lang/String;

    .line 13
    aput-object v2, v0, v1

    .line 15
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 20
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    const/4 v3, 0x3

    .line 23
    aput-object v2, v0, v3

    .line 25
    const/4 v2, 0x4

    .line 26
    aput-object v1, v0, v2

    .line 28
    const/4 v2, 0x5

    .line 29
    aput-object v1, v0, v2

    .line 31
    const/4 v2, 0x6

    .line 32
    aput-object v1, v0, v2

    .line 34
    const/4 v1, 0x7

    .line 35
    const-class v2, [Landroid/graphics/fonts/FontVariationAxis;

    .line 37
    aput-object v2, v0, v1

    .line 39
    const-string v1, "addFontFromAssetManager"

    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static n(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-class v2, Ljava/nio/ByteBuffer;

    .line 7
    aput-object v2, v0, v1

    .line 9
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 14
    const/4 v2, 0x2

    .line 15
    const-class v3, [Landroid/graphics/fonts/FontVariationAxis;

    .line 17
    aput-object v3, v0, v2

    .line 19
    const/4 v2, 0x3

    .line 20
    aput-object v1, v0, v2

    .line 22
    const/4 v2, 0x4

    .line 23
    aput-object v1, v0, v2

    .line 25
    const-string v1, "addFontFromBuffer"

    .line 27
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 16

    .line 1
    invoke-virtual {p0}, Lf0/l;->l()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lf0/j;->a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p3, 0x0

    .line 13
    const/4 p4, 0x0

    .line 14
    :try_start_d
    iget-object v0, p0, Lf0/l;->g:Ljava/lang/reflect/Constructor;

    .line 16
    new-array v1, p4, [Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_15} :catch_16

    .line 22
    goto :goto_17

    .line 23
    :catch_16
    move-object v0, p3

    .line 24
    :goto_17
    if-nez v0, :cond_1a

    .line 26
    return-object p3

    .line 27
    :cond_1a
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 30
    move-result-object p2

    .line 31
    array-length v9, p2

    .line 32
    move v10, p4

    .line 33
    :goto_20
    if-ge v10, v9, :cond_50

    .line 35
    aget-object v1, p2, v10

    .line 37
    invoke-virtual {v1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    .line 44
    move-result v5

    .line 45
    invoke-virtual {v1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    .line 52
    move-result v7

    .line 53
    invoke-virtual {v1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    .line 60
    move-result-object v8

    .line 61
    move-object v1, p0

    .line 62
    move-object v2, p1

    .line 63
    move-object v3, v0

    .line 64
    invoke-virtual/range {v1 .. v8}, Lf0/l;->i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_4d

    .line 70
    :try_start_45
    iget-object p1, p0, Lf0/l;->k:Ljava/lang/reflect/Method;

    .line 72
    new-array p2, p4, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_4c} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_45 .. :try_end_4c} :catch_4c

    .line 77
    :catch_4c
    return-object p3

    .line 78
    :cond_4d
    add-int/lit8 v10, v10, 0x1

    .line 80
    goto :goto_20

    .line 81
    :cond_50
    invoke-virtual {p0, v0}, Lf0/l;->k(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_57

    .line 87
    return-object p3

    .line 88
    :cond_57
    invoke-virtual {p0, v0}, Lf0/l;->j(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 91
    move-result-object p1

    .line 92
    return-object p1
.end method

.method public final b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 16

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_6

    .line 6
    return-object v2

    .line 7
    :cond_6
    invoke-virtual {p0}, Lf0/l;->l()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4c

    .line 13
    invoke-virtual {p0, p3, p2}, Lf0/p;->f(I[Lj0/m;)Lj0/m;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object p1

    .line 21
    :try_start_14
    iget-object p3, p2, Lj0/m;->a:Landroid/net/Uri;

    .line 23
    const-string v0, "r"

    .line 25
    invoke-virtual {p1, p3, v0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_24

    .line 31
    if-eqz p1, :cond_23

    .line 33
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_4b

    .line 36
    :cond_23
    return-object v2

    .line 37
    :cond_24
    :try_start_24
    new-instance p3, Landroid/graphics/Typeface$Builder;

    .line 39
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p3, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    .line 46
    iget v0, p2, Lj0/m;->c:I

    .line 48
    invoke-virtual {p3, v0}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    .line 51
    move-result-object p3

    .line 52
    iget-boolean p2, p2, Lj0/m;->d:Z

    .line 54
    invoke-virtual {p3, p2}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    .line 61
    move-result-object p2
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_41

    .line 62
    :try_start_3d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4b

    .line 65
    return-object p2

    .line 66
    :catchall_41
    move-exception p2

    .line 67
    :try_start_42
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 70
    goto :goto_4a

    .line 71
    :catchall_46
    move-exception p1

    .line 72
    :try_start_47
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :goto_4a
    throw p2
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 76
    :catch_4b
    return-object v2

    .line 77
    :cond_4c
    new-instance v0, Ljava/util/HashMap;

    .line 79
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    array-length v3, p2

    .line 83
    const/4 v4, 0x0

    .line 84
    move v5, v4

    .line 85
    :goto_54
    if-ge v5, v3, :cond_70

    .line 87
    aget-object v6, p2, v5

    .line 89
    iget v7, v6, Lj0/m;->e:I

    .line 91
    if-eqz v7, :cond_5d

    .line 93
    goto :goto_6d

    .line 94
    :cond_5d
    iget-object v6, v6, Lj0/m;->a:Landroid/net/Uri;

    .line 96
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_66

    .line 102
    goto :goto_6d

    .line 103
    :cond_66
    invoke-static {p1, v6}, Lf0/q;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    .line 112
    goto :goto_54

    .line 113
    :cond_70
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    move-result-object p1

    .line 117
    :try_start_74
    iget-object v0, p0, Lf0/l;->g:Ljava/lang/reflect/Constructor;

    .line 119
    new-array v3, v4, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v0
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_74 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/InstantiationException; {:try_start_74 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_74 .. :try_end_7c} :catch_7d

    .line 125
    goto :goto_7e

    .line 126
    :catch_7d
    move-object v0, v2

    .line 127
    :goto_7e
    if-nez v0, :cond_81

    .line 129
    return-object v2

    .line 130
    :cond_81
    array-length v3, p2

    .line 131
    move v5, v4

    .line 132
    move v6, v5

    .line 133
    :goto_84
    if-ge v5, v3, :cond_d1

    .line 135
    aget-object v7, p2, v5

    .line 137
    iget-object v8, v7, Lj0/m;->a:Landroid/net/Uri;

    .line 139
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 145
    if-nez v8, :cond_93

    .line 147
    goto :goto_ce

    .line 148
    :cond_93
    iget v6, v7, Lj0/m;->b:I

    .line 150
    iget v9, v7, Lj0/m;->c:I

    .line 152
    iget-boolean v7, v7, Lj0/m;->d:Z

    .line 154
    :try_start_99
    iget-object v10, p0, Lf0/l;->i:Ljava/lang/reflect/Method;

    .line 156
    const/4 v11, 0x5

    .line 157
    new-array v11, v11, [Ljava/lang/Object;

    .line 159
    aput-object v8, v11, v4

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v6

    .line 165
    aput-object v6, v11, v1

    .line 167
    const/4 v6, 0x2

    .line 168
    aput-object v2, v11, v6

    .line 170
    const/4 v6, 0x3

    .line 171
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v8

    .line 175
    aput-object v8, v11, v6

    .line 177
    const/4 v6, 0x4

    .line 178
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v7

    .line 182
    aput-object v7, v11, v6

    .line 184
    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/Boolean;

    .line 190
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 193
    move-result v6
    :try_end_c1
    .catch Ljava/lang/IllegalAccessException; {:try_start_99 .. :try_end_c1} :catch_c2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_99 .. :try_end_c1} :catch_c2

    .line 194
    goto :goto_c3

    .line 195
    :catch_c2
    move v6, v4

    .line 196
    :goto_c3
    if-nez v6, :cond_cd

    .line 198
    :try_start_c5
    iget-object p1, p0, Lf0/l;->k:Ljava/lang/reflect/Method;

    .line 200
    new-array p2, v4, [Ljava/lang/Object;

    .line 202
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_c5 .. :try_end_cc} :catch_cc
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c5 .. :try_end_cc} :catch_cc

    .line 205
    :catch_cc
    return-object v2

    .line 206
    :cond_cd
    move v6, v1

    .line 207
    :goto_ce
    add-int/lit8 v5, v5, 0x1

    .line 209
    goto :goto_84

    .line 210
    :cond_d1
    if-nez v6, :cond_db

    .line 212
    :try_start_d3
    iget-object p1, p0, Lf0/l;->k:Ljava/lang/reflect/Method;

    .line 214
    new-array p2, v4, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catch Ljava/lang/IllegalAccessException; {:try_start_d3 .. :try_end_da} :catch_da
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d3 .. :try_end_da} :catch_da

    .line 219
    :catch_da
    return-object v2

    .line 220
    :cond_db
    invoke-virtual {p0, v0}, Lf0/l;->k(Ljava/lang/Object;)Z

    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_e2

    .line 226
    return-object v2

    .line 227
    :cond_e2
    invoke-virtual {p0, v0}, Lf0/l;->j(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 230
    move-result-object p1

    .line 231
    if-nez p1, :cond_e9

    .line 233
    return-object v2

    .line 234
    :cond_e9
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 237
    move-result-object p1

    .line 238
    return-object p1
.end method

.method public final d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 14

    .line 1
    invoke-virtual {p0}, Lf0/l;->l()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_b

    .line 7
    invoke-super/range {p0 .. p5}, Lf0/p;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p2, 0x0

    .line 13
    const/4 p3, 0x0

    .line 14
    :try_start_d
    iget-object p5, p0, Lf0/l;->g:Ljava/lang/reflect/Constructor;

    .line 16
    new-array v0, p3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p5
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_15} :catch_16
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_15} :catch_16

    .line 22
    goto :goto_17

    .line 23
    :catch_16
    move-object p5, p2

    .line 24
    :goto_17
    if-nez p5, :cond_1a

    .line 26
    return-object p2

    .line 27
    :cond_1a
    const/4 v4, 0x0

    .line 28
    const/4 v5, -0x1

    .line 29
    const/4 v6, -0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v0, p0

    .line 32
    move-object v1, p1

    .line 33
    move-object v2, p5

    .line 34
    move-object v3, p4

    .line 35
    invoke-virtual/range {v0 .. v7}, Lf0/l;->i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_30

    .line 41
    :try_start_28
    iget-object p1, p0, Lf0/l;->k:Ljava/lang/reflect/Method;

    .line 43
    new-array p3, p3, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p1, p5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_2f} :catch_2f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    return-object p2

    .line 49
    :cond_30
    invoke-virtual {p0, p5}, Lf0/l;->k(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_37

    .line 55
    return-object p2

    .line 56
    :cond_37
    invoke-virtual {p0, p5}, Lf0/l;->j(Ljava/lang/Object;)Landroid/graphics/Typeface;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final i(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III[Landroid/graphics/fonts/FontVariationAxis;)Z
    .registers 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lf0/l;->h:Ljava/lang/reflect/Method;

    .line 4
    const/16 v2, 0x8

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 11
    move-result-object p1

    .line 12
    aput-object p1, v2, v0

    .line 14
    const/4 p1, 0x1

    .line 15
    aput-object p3, v2, p1

    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p3

    .line 22
    aput-object p3, v2, p1

    .line 24
    const/4 p1, 0x3

    .line 25
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    aput-object p3, v2, p1

    .line 29
    const/4 p1, 0x4

    .line 30
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p3

    .line 34
    aput-object p3, v2, p1

    .line 36
    const/4 p1, 0x5

    .line 37
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p3

    .line 41
    aput-object p3, v2, p1

    .line 43
    const/4 p1, 0x6

    .line 44
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p3

    .line 48
    aput-object p3, v2, p1

    .line 50
    const/4 p1, 0x7

    .line 51
    aput-object p7, v2, p1

    .line 53
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    move-result p1
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_3f

    .line 63
    return p1

    .line 64
    :catch_3f
    return v0
.end method

.method public j(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lf0/l;->f:Ljava/lang/Class;

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v1, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lf0/l;->l:Ljava/lang/reflect/Method;

    .line 15
    const/4 v4, 0x3

    .line 16
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    aput-object v1, v4, v3

    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v4, v2

    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v1

    .line 32
    aput-object v1, v4, v2

    .line 34
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/graphics/Typeface;
    :try_end_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_27} :catch_28

    .line 40
    return-object p1

    .line 41
    :catch_28
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    iget-object v1, p0, Lf0/l;->j:Ljava/lang/reflect/Method;

    .line 4
    new-array v2, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p1
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_10

    .line 16
    return p1

    .line 17
    :catch_10
    return v0
.end method

.method public final l()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lf0/l;->h:Ljava/lang/reflect/Method;

    .line 3
    if-nez v0, :cond_b

    .line 5
    const-string v0, "TypefaceCompatApi26Impl"

    .line 7
    const-string v1, "Unable to collect necessary private methods. Fallback to legacy implementation."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_b
    iget-object v0, p0, Lf0/l;->h:Ljava/lang/reflect/Method;

    .line 14
    if-eqz v0, :cond_11

    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    return v0
.end method

.method public o(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    const-class v1, Landroid/graphics/Typeface;

    .line 8
    const/4 v2, 0x3

    .line 9
    new-array v2, v2, [Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object p1, v2, v3

    .line 18
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 20
    aput-object p1, v2, v0

    .line 22
    const/4 v3, 0x2

    .line 23
    aput-object p1, v2, v3

    .line 25
    const-string p1, "createFromFamiliesWithDefault"

    .line 27
    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    return-object p1
.end method
