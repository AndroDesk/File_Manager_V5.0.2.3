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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareChar(CC)I
    .registers 8

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->getInstance(Landroid/content/Context;)Lmiuix/pinyin/utilities/ChinesePinyinConverter;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lmiuix/pinyin/utilities/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7c

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    iget-object p1, p1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    iget-object p2, p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    iget v4, v4, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    iget v0, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    if-eq v4, v0, :cond_6f

    const/4 p1, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;

    iget p2, p2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$Token;->type:I

    if-ne p1, p2, :cond_6e

    const/4 v2, -0x1

    :cond_6e
    return v2

    :cond_6f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_7c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private compareNumber(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "compareNumber"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method private compareRight(Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    move-result v1

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_1e

    return v4

    :cond_1e
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_26

    return v5

    :cond_26
    if-ge v1, v2, :cond_2c

    if-nez v0, :cond_37

    move v0, v4

    goto :goto_37

    :cond_2c
    if-le v1, v2, :cond_32

    if-nez v0, :cond_37

    move v0, v5

    goto :goto_37

    :cond_32
    if-nez v1, :cond_37

    if-nez v2, :cond_37

    return v0

    :cond_37
    :goto_37
    iget v1, p1, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    add-int/2addr v1, v5

    iput v1, p1, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    iget v1, p2, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    add-int/2addr v1, v5

    iput v1, p2, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    goto :goto_1
.end method

.method private static skipZerosAndSpaces(Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;)I
    .registers 5

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    move-result v0

    const/4 v1, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    const/16 v3, 0x30

    if-nez v2, :cond_11

    if-ne v0, v3, :cond_10

    goto :goto_11

    :cond_10
    return v1

    :cond_11
    :goto_11
    if-ne v0, v3, :cond_15

    add-int/lit8 v1, v1, 0x1

    :cond_15
    iget v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->ptr:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator$OperandData;->getChar()C

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-static {p1}, Lcom/android/fileexplorer/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

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

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/model/StringNaturalOrderComparator;->compareNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/model/group/CollatorInstance;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
