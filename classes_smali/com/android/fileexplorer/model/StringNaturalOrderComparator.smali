.class public Lcom/android/fileexplorer/model/StringNaturalOrderComparator;
.super Ljava/lang/Object;
.source "StringNaturalOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareChar(CC)I
    .registers 8

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v1, :cond_7c

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_7c

    .line 35
    if-eqz v0, :cond_7c

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_7c

    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 49
    iget-object p1, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 65
    iget-object p2, p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 67
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    move-result p2

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_6f

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 87
    iget v4, v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 95
    iget v0, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 97
    if-eq v4, v0, :cond_6f

    .line 99
    const/4 p1, 0x2

    .line 100
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object p2

    .line 104
    check-cast p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    .line 106
    iget p2, p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    .line 108
    if-ne p1, p2, :cond_6e

    .line 110
    const/4 v2, -0x1

    .line 111
    :cond_6e
    return v2

    .line 112
    :cond_6f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-result p1

    .line 124
    return p1

    .line 125
    :cond_7c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 132
    move-result-object v0

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-result p1

    .line 145
    return p1
.end method

.method private compareNumber(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/math/BigDecimal;

    .line 8
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 14
    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 15
    goto :goto_1a

    .line 16
    :catch_f
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    const-string p2, "compareNumber"

    .line 23
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_1a
    return p1
.end method

.method private compareRight(Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;)I
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    .line 5
    move-result v1

    .line 6
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    .line 9
    move-result v2

    .line 10
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_16

    .line 16
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_16

    .line 22
    return v0

    .line 23
    :cond_16
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-nez v3, :cond_1e

    .line 30
    return v4

    .line 31
    :cond_1e
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 34
    move-result v3

    .line 35
    const/4 v5, 0x1

    .line 36
    if-nez v3, :cond_26

    .line 38
    return v5

    .line 39
    :cond_26
    if-ge v1, v2, :cond_2c

    .line 41
    if-nez v0, :cond_37

    .line 43
    move v0, v4

    .line 44
    goto :goto_37

    .line 45
    :cond_2c
    if-le v1, v2, :cond_32

    .line 47
    if-nez v0, :cond_37

    .line 49
    move v0, v5

    .line 50
    goto :goto_37

    .line 51
    :cond_32
    if-nez v1, :cond_37

    .line 53
    if-nez v2, :cond_37

    .line 55
    return v0

    .line 56
    :cond_37
    :goto_37
    iget v1, p1, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 58
    add-int/2addr v1, v5

    .line 59
    iput v1, p1, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 61
    iget v1, p2, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 63
    add-int/2addr v1, v5

    .line 64
    iput v1, p2, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 66
    goto :goto_1
.end method

.method private static skipZerosAndSpaces(Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x30

    .line 12
    if-nez v2, :cond_11

    .line 14
    if-ne v0, v3, :cond_10

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    return v1

    .line 18
    :cond_11
    :goto_11
    if-ne v0, v3, :cond_15

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    :cond_15
    iget v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    iput v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    .line 31
    move-result v0

    .line 32
    goto :goto_5
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 2
    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    if-nez v0, :cond_14

    if-eqz v1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    if-eqz v0, :cond_1b

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compareNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 5
    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/model/group/CollatorInstance;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
