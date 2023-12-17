.class public final Lf0/n;
.super Lf0/p;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lf0/p;-><init>()V

    .line 4
    return-void
.end method

.method public static g(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .registers 7

    .line 1
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    .line 3
    and-int/lit8 v1, p1, 0x1

    .line 5
    if-eqz v1, :cond_9

    .line 7
    const/16 v1, 0x2bc

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/16 v1, 0x190

    .line 12
    :goto_b
    and-int/lit8 p1, p1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz p1, :cond_13

    .line 18
    move p1, v3

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move p1, v2

    .line 21
    :goto_14
    invoke-direct {v0, v1, p1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lf0/n;->h(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    .line 35
    move-result v1

    .line 36
    :goto_23
    invoke-virtual {p0}, Landroid/graphics/fonts/FontFamily;->getSize()I

    .line 39
    move-result v2

    .line 40
    if-ge v3, v2, :cond_3c

    .line 42
    invoke-virtual {p0, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 49
    move-result-object v4

    .line 50
    invoke-static {v0, v4}, Lf0/n;->h(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    .line 53
    move-result v4

    .line 54
    if-ge v4, v1, :cond_39

    .line 56
    move-object p1, v2

    .line 57
    move v1, v4

    .line 58
    :cond_39
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_23

    .line 61
    :cond_3c
    return-object p1
.end method

.method public static h(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 13
    move-result v0

    .line 14
    div-int/lit8 v0, v0, 0x64

    .line 16
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    .line 19
    move-result p0

    .line 20
    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    .line 23
    move-result p1

    .line 24
    if-ne p0, p1, :cond_1b

    .line 26
    const/4 p0, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 p0, 0x2

    .line 29
    :goto_1c
    add-int/2addr v0, p0

    .line 30
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 12

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 5
    move-result-object p2

    .line 6
    array-length v0, p2

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v3, p1

    .line 9
    move v2, v1

    .line 10
    :goto_9
    if-ge v2, v0, :cond_4e

    .line 12
    aget-object v4, p2, v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_6a

    .line 14
    :try_start_d
    new-instance v5, Landroid/graphics/fonts/Font$Builder;

    .line 16
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    .line 19
    move-result v6

    .line 20
    invoke-direct {v5, p3, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 23
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_26

    .line 37
    const/4 v6, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v6, v1

    .line 40
    :goto_27
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    .line 47
    move-result v6

    .line 48
    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v5, v4}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 63
    move-result-object v4

    .line 64
    if-nez v3, :cond_48

    .line 66
    new-instance v5, Landroid/graphics/fonts/FontFamily$Builder;

    .line 68
    invoke-direct {v5, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 71
    move-object v3, v5

    .line 72
    goto :goto_4b

    .line 73
    :cond_48
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4b} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4b} :catch_6a

    .line 76
    :catch_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto :goto_9

    .line 79
    :cond_4e
    if-nez v3, :cond_51

    .line 81
    return-object p1

    .line 82
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 85
    move-result-object p2

    .line 86
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 88
    invoke-direct {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 91
    invoke-static {p2, p4}, Lf0/n;->g(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 106
    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_6a} :catch_6a

    .line 107
    :catch_6a
    return-object p1
.end method

.method public final b(Landroid/content/Context;[Lj0/m;I)Landroid/graphics/Typeface;
    .registers 13

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_5
    array-length v1, p2

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v4, v0

    .line 9
    move v3, v2

    .line 10
    :goto_9
    if-ge v3, v1, :cond_57

    .line 12
    aget-object v5, p2, v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_74

    .line 14
    :try_start_d
    iget-object v6, v5, Lj0/m;->a:Landroid/net/Uri;

    .line 16
    const-string v7, "r"

    .line 18
    invoke-virtual {p1, v6, v7, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 21
    move-result-object v6
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_54
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_74

    .line 22
    if-nez v6, :cond_1a

    .line 24
    if-eqz v6, :cond_54

    .line 26
    goto :goto_46

    .line 27
    :cond_1a
    :try_start_1a
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    .line 29
    invoke-direct {v7, v6}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 32
    iget v8, v5, Lj0/m;->c:I

    .line 34
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 37
    move-result-object v7

    .line 38
    iget-boolean v8, v5, Lj0/m;->d:Z

    .line 40
    if-eqz v8, :cond_2b

    .line 42
    const/4 v8, 0x1

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v8, v2

    .line 45
    :goto_2c
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 48
    move-result-object v7

    .line 49
    iget v5, v5, Lj0/m;->b:I

    .line 51
    invoke-virtual {v7, v5}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 58
    move-result-object v5

    .line 59
    if-nez v4, :cond_43

    .line 61
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    .line 63
    invoke-direct {v7, v5}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 66
    move-object v4, v7

    .line 67
    goto :goto_46

    .line 68
    :cond_43
    invoke-virtual {v4, v5}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_4a

    .line 71
    :goto_46
    :try_start_46
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_74

    .line 74
    goto :goto_54

    .line 75
    :catchall_4a
    move-exception v5

    .line 76
    :try_start_4b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    .line 79
    goto :goto_53

    .line 80
    :catchall_4f
    move-exception v6

    .line 81
    :try_start_50
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    :goto_53
    throw v5
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_54} :catch_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_74

    .line 85
    :catch_54
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_9

    .line 88
    :cond_57
    if-nez v4, :cond_5a

    .line 90
    return-object v0

    .line 91
    :cond_5a
    :try_start_5a
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 97
    invoke-direct {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 100
    invoke-static {p1, p3}, Lf0/n;->g(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p2, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 115
    move-result-object p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_73} :catch_74

    .line 116
    return-object p1

    .line 117
    :catch_74
    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Do not use this function in API 29 or later."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public final d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    .line 1
    :try_start_0
    new-instance p1, Landroid/graphics/fonts/Font$Builder;

    .line 3
    invoke-direct {p1, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    .line 9
    move-result-object p1

    .line 10
    new-instance p2, Landroid/graphics/fonts/FontFamily$Builder;

    .line 12
    invoke-direct {p2, p1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    .line 15
    invoke-virtual {p2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 21
    invoke-direct {p3, p2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p3, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    .line 35
    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 36
    return-object p1

    .line 37
    :catch_24
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public final f(I[Lj0/m;)Lj0/m;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 3
    const-string p2, "Do not use this function in API 29 or later."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
