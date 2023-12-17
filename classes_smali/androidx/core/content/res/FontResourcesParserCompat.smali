.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;,
        Landroidx/core/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static getType(Landroid/content/res/TypedArray;I)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5

    .line 1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_b

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_b

    .line 11
    goto :goto_0

    .line 12
    :cond_b
    if-ne v0, v1, :cond_12

    .line 14
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 21
    const-string p1, "No start tag found"

    .line 23
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object v0

    .line 12
    :try_start_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_19

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 21
    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_50

    .line 22
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    return-object p0

    .line 26
    :cond_19
    :try_start_19
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-ne v3, v4, :cond_41

    .line 39
    move p1, v2

    .line 40
    :goto_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    .line 43
    move-result v3

    .line 44
    if-ge p1, v3, :cond_4c

    .line 46
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_3e

    .line 52
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {v3}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_3e
    add-int/lit8 p1, p1, 0x1

    .line 65
    goto :goto_27

    .line 66
    :cond_41
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_19 .. :try_end_4c} :catchall_50

    .line 77
    :cond_4c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-object v1

    .line 81
    :catchall_50
    move-exception p0

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    throw p0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "font-family"

    .line 5
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_16

    .line 18
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 26
    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 11

    .line 1
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lc0/c;->FontFamily:[I

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object v0

    .line 11
    sget v1, Lc0/c;->FontFamily_fontProviderAuthority:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    sget v2, Lc0/c;->FontFamily_fontProviderPackage:I

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    sget v3, Lc0/c;->FontFamily_fontProviderQuery:I

    .line 25
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    sget v4, Lc0/c;->FontFamily_fontProviderCerts:I

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 35
    move-result v4

    .line 36
    sget v6, Lc0/c;->FontFamily_fontProviderFetchStrategy:I

    .line 38
    const/4 v7, 0x1

    .line 39
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 42
    move-result v6

    .line 43
    sget v7, Lc0/c;->FontFamily_fontProviderFetchTimeout:I

    .line 45
    const/16 v8, 0x1f4

    .line 47
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 50
    move-result v7

    .line 51
    sget v8, Lc0/c;->FontFamily_fontProviderSystemFontFamily:I

    .line 53
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    const/4 v0, 0x3

    .line 61
    if-eqz v1, :cond_5b

    .line 63
    if-eqz v2, :cond_5b

    .line 65
    if-eqz v3, :cond_5b

    .line 67
    :goto_42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 70
    move-result v5

    .line 71
    if-eq v5, v0, :cond_4c

    .line 73
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 76
    goto :goto_42

    .line 77
    :cond_4c
    invoke-static {p1, v4}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 80
    move-result-object p0

    .line 81
    new-instance p1, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 83
    new-instance v0, Lj0/f;

    .line 85
    invoke-direct {v0, v1, v2, v3, p0}, Lj0/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 88
    invoke-direct {p1, v0, v6, v7, v8}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Lj0/f;IILjava/lang/String;)V

    .line 91
    return-object p1

    .line 92
    :cond_5b
    new-instance v1, Ljava/util/ArrayList;

    .line 94
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    :goto_60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 100
    move-result v2

    .line 101
    if-eq v2, v0, :cond_86

    .line 103
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 106
    move-result v2

    .line 107
    const/4 v3, 0x2

    .line 108
    if-eq v2, v3, :cond_6e

    .line 110
    goto :goto_60

    .line 111
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    const-string v3, "font"

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_82

    .line 123
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    goto :goto_60

    .line 131
    :cond_82
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 134
    goto :goto_60

    .line 135
    :cond_86
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_8e

    .line 141
    const/4 p0, 0x0

    .line 142
    return-object p0

    .line 143
    :cond_8e
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    .line 145
    new-array p1, v5, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 147
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    check-cast p1, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 153
    invoke-direct {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    .line 156
    return-object p0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 11

    .line 1
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lc0/c;->FontFamilyFont:[I

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object p1

    .line 11
    sget v0, Lc0/c;->FontFamilyFont_fontWeight:I

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    sget v0, Lc0/c;->FontFamilyFont_android_fontWeight:I

    .line 22
    :goto_15
    const/16 v1, 0x190

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 27
    move-result v4

    .line 28
    sget v0, Lc0/c;->FontFamilyFont_fontStyle:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_24

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    sget v0, Lc0/c;->FontFamilyFont_android_fontStyle:I

    .line 39
    :goto_26
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-ne v2, v0, :cond_30

    .line 47
    move v5, v2

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    move v5, v1

    .line 50
    :goto_31
    sget v0, Lc0/c;->FontFamilyFont_ttcIndex:I

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3a

    .line 58
    goto :goto_3c

    .line 59
    :cond_3a
    sget v0, Lc0/c;->FontFamilyFont_android_ttcIndex:I

    .line 61
    :goto_3c
    sget v2, Lc0/c;->FontFamilyFont_fontVariationSettings:I

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_45

    .line 69
    goto :goto_47

    .line 70
    :cond_45
    sget v2, Lc0/c;->FontFamilyFont_android_fontVariationSettings:I

    .line 72
    :goto_47
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 79
    move-result v7

    .line 80
    sget v0, Lc0/c;->FontFamilyFont_font:I

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_58

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    sget v0, Lc0/c;->FontFamilyFont_android_font:I

    .line 91
    :goto_5a
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 94
    move-result v8

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :goto_65
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 105
    move-result p1

    .line 106
    const/4 v0, 0x3

    .line 107
    if-eq p1, v0, :cond_70

    .line 109
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 112
    goto :goto_65

    .line 113
    :cond_70
    new-instance p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    .line 115
    move-object v2, p0

    .line 116
    invoke-direct/range {v2 .. v8}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    .line 119
    return-object p0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_1
    if-lez v0, :cond_14

    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_11

    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v1, v2, :cond_e

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    add-int/lit8 v0, v0, -0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_11
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_14
    return-void
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_8
    if-ge v3, v1, :cond_16

    .line 11
    aget-object v4, p0, v3

    .line 13
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_8

    .line 23
    :cond_16
    return-object v0
.end method
