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

    const-string v0, "<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;->access$000(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_33

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v4, v4, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v3, v4, :cond_33

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_33
    move v2, v1

    :goto_34
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_6b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    if-ne v3, v5, :cond_69

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v2, v2, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    iget v5, v5, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    add-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    iput v2, v3, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;->time:I

    :cond_69
    move v2, v4

    goto :goto_34

    :cond_6b
    return-void
.end method

.method private static doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 8

    new-instance v0, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;

    invoke-direct {v0}, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\r\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_28

    array-length v3, p0

    move v4, v2

    :goto_15
    if-ge v2, v3, :cond_27

    aget-object v5, p0, v2

    invoke-static {v5, v0, v1}, Lcom/miui/maml/elements/MusicLyricParser;->parseLine(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;)I

    move-result v5

    if-nez v5, :cond_20

    goto :goto_27

    :cond_20
    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    move v4, v6

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_27
    :goto_27
    move v2, v4

    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3c

    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;

    invoke-direct {p0}, Lcom/miui/maml/elements/MusicLyricParser$EntityCompator;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/maml/elements/MusicLyricParser$Lyric;-><init>(Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;Ljava/util/ArrayList;Z)V

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

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

    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_2
    array-length v2, p0

    sub-int/2addr v2, v0

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L  # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x0

    array-length v4, p0

    sub-int/2addr v4, v1

    const/16 v5, 0x3c

    move v6, v5

    :goto_17
    if-ltz v4, :cond_25

    aget-object v7, p0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/2addr v7, v6

    mul-int/2addr v6, v5

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    :cond_25
    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v2

    const p0, 0x112a880

    if-ge v3, p0, :cond_35

    new-instance p0, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;

    invoke-direct {p0, v3, p2}, Lcom/miui/maml/elements/MusicLyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_35} :catch_36

    :cond_35
    move v0, v1

    :catch_36
    return v0
.end method

.method private static parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I
    .registers 6

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_62

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_11

    goto :goto_62

    :cond_11
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "al"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->album:Ljava/lang/String;

    goto :goto_61

    :cond_27
    const-string v0, "ar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->artist:Ljava/lang/String;

    goto :goto_61

    :cond_32
    const-string v0, "ti"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->title:Ljava/lang/String;

    goto :goto_61

    :cond_3d
    const-string v0, "by"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->editor:Ljava/lang/String;

    goto :goto_61

    :cond_48
    const-string v0, "ve"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    iput-object p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->version:Ljava/lang/String;

    goto :goto_61

    :cond_53
    const-string v0, "offset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :try_start_5b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;->offset:I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_61} :catch_62

    :goto_61
    move v1, v2

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

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    sget-object v0, Lcom/miui/maml/elements/MusicLyricParser;->TAG_EXTRA_LRC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_22

    return v1

    :cond_22
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v3, :cond_31

    return v1

    :cond_31
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move v6, v2

    move v7, v3

    :goto_3e
    if-ge v6, v0, :cond_6b

    aget-object v8, p0, v6

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_49

    goto :goto_68

    :cond_49
    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ge v10, v3, :cond_57

    goto :goto_68

    :cond_57
    aget-object v7, v9, v2

    invoke-static {v7}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-static {v9, p2, v4}, Lcom/miui/maml/elements/MusicLyricParser;->parseEntity([Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    goto :goto_68

    :cond_64
    invoke-static {v8, p1}, Lcom/miui/maml/elements/MusicLyricParser;->parseHeader(Ljava/lang/String;Lcom/miui/maml/elements/MusicLyricParser$LyricHeader;)I

    move-result v7

    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_6b
    return v7
.end method

.method public static parseLyric(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    :try_start_3
    invoke-static {p0}, Lcom/miui/maml/elements/MusicLyricParser;->doParse(Ljava/lang/String;)Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/maml/elements/MusicLyricParser;->correctTime(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_f
    return-object v0
.end method
