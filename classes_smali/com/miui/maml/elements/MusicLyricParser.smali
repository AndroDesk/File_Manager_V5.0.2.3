.class public Lcom/miui/maml/elements/MusicLyricParser;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;,
        Lcom/miui/maml/elements/MusicLyricParser$Lyric;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;,
        Lcom/miui/maml/elements/MusicLyricParser$LyricShot;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final INTERVAL_OF_LAST:I = 0x1f40

.field private static final LINE_PARSE_IGNORE:I = 0x1

.field private static final LINE_PARSE_REGULAR:I = 0x2

.field private static final LINE_PARSE_STOP:I = 0x0

.field public static final MAX_VALID_TIME:I = 0x112a880

.field private static final TAG_ALBUM:Ljava/lang/String; = "al"

.field private static final TAG_ARTIST:Ljava/lang/String; = "ar"

.field private static final TAG_EDITOR:Ljava/lang/String; = "by"

.field private static final TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

.field private static final TAG_OFFSET:Ljava/lang/String; = "offset"

.field private static final TAG_TITLE:Ljava/lang/String; = "ti"

.field private static final TAG_VERSION:Ljava/lang/String; = "ve"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 7

    .line 1
    if-nez p0, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-le v0, v1, :cond_33

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 22
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 30
    iget v4, v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 32
    if-ne v3, v4, :cond_33

    .line 34
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 40
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 46
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 48
    div-int/lit8 v3, v3, 0x2

    .line 50
    iput v3, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 52
    :cond_33
    move v2, v1

    .line 53
    :goto_34
    add-int/lit8 v3, v0, -0x1

    .line 55
    if-ge v2, v3, :cond_6b

    .line 57
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 63
    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 65
    add-int/lit8 v4, v2, 0x1

    .line 67
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 73
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 75
    if-ne v3, v5, :cond_69

    .line 77
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 83
    add-int/lit8 v2, v2, -0x1

    .line 85
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 91
    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 93
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 99
    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 101
    add-int/2addr v2, v5

    .line 102
    div-int/lit8 v2, v2, 0x2

    .line 104
    iput v2, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    .line 106
    :cond_69
    move v2, v4

    .line 107
    goto :goto_34

    .line 108
    :cond_6b
    return-void
.end method

.method private static doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 8

    .line 1
    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    .line 3
    invoke-direct {v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-string v2, "\r\n"

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p0, :cond_28

    .line 20
    array-length v3, p0

    .line 21
    move v4, v2

    .line 22
    :goto_15
    if-ge v2, v3, :cond_27

    .line 24
    aget-object v5, p0, v2

    .line 26
    invoke-static {v5, v0, v1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_20

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    const/4 v6, 0x1

    .line 34
    if-ne v5, v6, :cond_24

    .line 36
    move v4, v6

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_15

    .line 40
    :cond_27
    :goto_27
    move v2, v4

    .line 41
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_3c

    .line 47
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;

    .line 49
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    .line 52
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 57
    invoke-direct {p0, v0, v1, v2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;-><init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    const/4 p0, 0x0

    .line 62
    :goto_3d
    return-object p0
.end method

.method private static parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_2
    array-length v2, p0

    .line 4
    sub-int/2addr v2, v0

    .line 5
    aget-object v2, p0, v2

    .line 7
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    move-result-wide v2

    .line 11
    const-wide v4, 0x408f400000000000L  # 1000.0

    .line 16
    mul-double/2addr v2, v4

    .line 17
    double-to-int v2, v2

    .line 18
    const/4 v3, 0x0

    .line 19
    array-length v4, p0

    .line 20
    sub-int/2addr v4, v1

    .line 21
    const/16 v5, 0x3c

    .line 23
    move v6, v5

    .line 24
    :goto_17
    if-ltz v4, :cond_25

    .line 26
    aget-object v7, p0, v4

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    move-result v7

    .line 32
    mul-int/2addr v7, v6

    .line 33
    mul-int/2addr v6, v5

    .line 34
    add-int/2addr v3, v7

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 37
    goto :goto_17

    .line 38
    :cond_25
    mul-int/lit16 v3, v3, 0x3e8

    .line 40
    add-int/2addr v3, v2

    .line 41
    const p0, 0x112a880

    .line 44
    if-ge v3, p0, :cond_35

    .line 46
    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    .line 48
    invoke-direct {p0, v3, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_35} :catch_36

    .line 54
    :cond_35
    move v0, v1

    .line 55
    :catch_36
    return v0
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I
    .registers 6

    .line 1
    const-string v0, ":"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ltz v0, :cond_62

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    sub-int/2addr v2, v1

    .line 15
    if-lt v0, v2, :cond_11

    .line 17
    goto :goto_62

    .line 18
    :cond_11
    const/4 v2, 0x2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    add-int/2addr v0, v1

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string v0, "al"

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_27

    .line 37
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    .line 39
    goto :goto_61

    .line 40
    :cond_27
    const-string v0, "ar"

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_32

    .line 48
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    .line 50
    goto :goto_61

    .line 51
    :cond_32
    const-string v0, "ti"

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3d

    .line 59
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    .line 61
    goto :goto_61

    .line 62
    :cond_3d
    const-string v0, "by"

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_48

    .line 70
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    .line 72
    goto :goto_61

    .line 73
    :cond_48
    const-string v0, "ve"

    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_53

    .line 81
    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    .line 83
    goto :goto_61

    .line 84
    :cond_53
    const-string v0, "offset"

    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_62

    .line 92
    :try_start_5b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    move-result p0

    .line 96
    iput p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_61} :catch_62

    .line 98
    :goto_61
    move v1, v2

    .line 99
    :catch_62
    :cond_62
    :goto_62
    return v1
.end method

.method private static parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_c

    .line 12
    return v1

    .line 13
    :cond_c
    sget-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 19
    const-string v0, ""

    .line 21
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string v0, "]"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    const/4 v3, -0x1

    .line 32
    if-ne v2, v3, :cond_22

    .line 34
    return v1

    .line 35
    :cond_22
    add-int/lit8 v4, v2, 0x1

    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    const-string v5, "["

    .line 43
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    move-result v6

    .line 47
    if-ne v6, v3, :cond_31

    .line 49
    return v1

    .line 50
    :cond_31
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    array-length v0, p0

    .line 59
    const/4 v2, 0x0

    .line 60
    const/4 v3, 0x2

    .line 61
    move v6, v2

    .line 62
    move v7, v3

    .line 63
    :goto_3e
    if-ge v6, v0, :cond_6b

    .line 65
    aget-object v8, p0, v6

    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    move-result v9

    .line 71
    if-nez v9, :cond_49

    .line 73
    goto :goto_68

    .line 74
    :cond_49
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    move-result-object v8

    .line 78
    const-string v9, ":"

    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    move-result-object v9

    .line 84
    array-length v10, v9

    .line 85
    if-ge v10, v3, :cond_57

    .line 87
    goto :goto_68

    .line 88
    :cond_57
    aget-object v7, v9, v2

    .line 90
    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_64

    .line 96
    invoke-static {v9, p2, v4}, Lcom/miui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    .line 99
    move-result v7

    .line 100
    goto :goto_68

    .line 101
    :cond_64
    invoke-static {v8, p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I

    .line 104
    move-result v7

    .line 105
    :goto_68
    add-int/lit8 v6, v6, 0x1

    .line 107
    goto :goto_3e

    .line 108
    :cond_6b
    return v7
.end method

.method public static parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_f

    .line 4
    :try_start_3
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/miui/maml/elements/MusicLyricParser;->correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 11
    goto :goto_f

    .line 12
    :catch_b
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :cond_f
    :goto_f
    return-object v0
.end method
