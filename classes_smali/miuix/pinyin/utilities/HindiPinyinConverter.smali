.class public Lmiuix/pinyin/utilities/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "HindiPinyinConverter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_ADDITIONAL_CONSONANTS:I = 0x8

.field private static final NUM_CONSONANTS:I = 0x23

.field private static final NUM_DEPENDENT_VOWELS:I = 0xf

.field private static final NUM_INDEPENDENT_VOWELS:I = 0xc

.field private static final NUM_VARIOUS_SIGN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HindiPinyinConverter"

.field private static sArrayList:Lmiuix/core/util/Pools$SimplePool; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConsonantSyllableEnding:Ljava/lang/String; = "्"

.field private static sStringBuilder:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTripleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->initUnicodeAndPinyin()V

    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .registers 1

    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiuix/core/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .registers 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const/16 v2, 0xf

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    const/16 v3, 0x23

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    const-string v6, "अ"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "आ"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-string v6, "इ"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "ई"

    aput-object v6, v5, v4

    const-string v6, "उ"

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const-string v6, "ऊ"

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const-string v6, "ऋ"

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const-string v6, "ए"

    const/4 v13, 0x7

    aput-object v6, v5, v13

    const-string v6, "ऐ"

    aput-object v6, v5, v3

    const-string v6, "ऑ"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    const-string v6, "ओ"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    const-string v6, "औ"

    const/16 v16, 0xb

    aput-object v6, v5, v16

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v5, v7

    const-string v6, "aa"

    aput-object v6, v5, v8

    const-string v17, "i"

    aput-object v17, v5, v9

    const-string v18, "ee"

    aput-object v18, v5, v4

    const-string v18, "u"

    aput-object v18, v5, v10

    const-string v18, "oo"

    aput-object v18, v5, v11

    const-string v18, "r"

    aput-object v18, v5, v12

    const-string v19, "e"

    aput-object v19, v5, v13

    const-string v20, "ai"

    aput-object v20, v5, v3

    const-string v20, "o"

    aput-object v20, v5, v14

    aput-object v20, v5, v15

    const-string v21, "au"

    aput-object v21, v5, v16

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    const-string v21, "ा"

    aput-object v21, v5, v7

    const-string v21, "ि"

    aput-object v21, v5, v8

    const-string v21, "ी"

    aput-object v21, v5, v9

    const-string v21, "ु"

    aput-object v21, v5, v4

    const-string v21, "ू"

    aput-object v21, v5, v10

    const-string v21, "ृ"

    aput-object v21, v5, v11

    const-string v21, "ॄ"

    aput-object v21, v5, v12

    const-string v21, "ॅ"

    aput-object v21, v5, v13

    const-string v21, "े"

    aput-object v21, v5, v3

    const-string v21, "ै"

    aput-object v21, v5, v14

    const-string v21, "ॉ"

    aput-object v21, v5, v15

    const-string v21, "ो"

    aput-object v21, v5, v16

    const-string v21, "ौ"

    aput-object v21, v5, v1

    const-string v21, "ॎ"

    const/16 v22, 0xd

    aput-object v21, v5, v22

    const-string v21, "ॏ"

    const/16 v23, 0xe

    aput-object v21, v5, v23

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object v17, v5, v8

    const-string v6, "ee"

    aput-object v6, v5, v9

    const-string v6, "u"

    aput-object v6, v5, v4

    const-string v6, "oo"

    aput-object v6, v5, v10

    aput-object v18, v5, v11

    const-string v6, "R"

    aput-object v6, v5, v12

    aput-object v19, v5, v13

    aput-object v19, v5, v3

    const-string v6, "ai"

    aput-object v6, v5, v14

    aput-object v20, v5, v15

    aput-object v20, v5, v16

    const-string v6, "au"

    aput-object v6, v5, v1

    aput-object v19, v5, v22

    const-string v6, "aw"

    aput-object v6, v5, v23

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    const-string v6, "क"

    aput-object v6, v5, v7

    const-string v6, "ख"

    aput-object v6, v5, v8

    const-string v6, "ग"

    aput-object v6, v5, v9

    const-string v6, "घ"

    aput-object v6, v5, v4

    const-string v6, "ङ"

    aput-object v6, v5, v10

    const-string v6, "च"

    aput-object v6, v5, v11

    const-string v6, "छ"

    aput-object v6, v5, v12

    const-string v6, "ज"

    aput-object v6, v5, v13

    const-string v6, "झ"

    aput-object v6, v5, v3

    const-string v6, "ञ"

    aput-object v6, v5, v14

    const-string v6, "ट"

    aput-object v6, v5, v15

    const-string v6, "ठ"

    aput-object v6, v5, v16

    const-string v6, "ड"

    aput-object v6, v5, v1

    const-string v6, "ढ"

    aput-object v6, v5, v22

    const-string v6, "ण"

    aput-object v6, v5, v23

    const-string v6, "त"

    aput-object v6, v5, v2

    const/16 v6, 0x10

    const-string v17, "थ"

    aput-object v17, v5, v6

    const/16 v6, 0x11

    const-string v17, "द"

    aput-object v17, v5, v6

    const/16 v6, 0x12

    const-string v17, "ध"

    aput-object v17, v5, v6

    const/16 v6, 0x13

    const-string v17, "न"

    aput-object v17, v5, v6

    const/16 v6, 0x14

    const-string v17, "ऩ"

    aput-object v17, v5, v6

    const/16 v6, 0x15

    const-string v17, "प"

    aput-object v17, v5, v6

    const/16 v6, 0x16

    const-string v17, "फ"

    aput-object v17, v5, v6

    const/16 v6, 0x17

    const-string v17, "ब"

    aput-object v17, v5, v6

    const/16 v6, 0x18

    const-string v17, "भ"

    aput-object v17, v5, v6

    const/16 v6, 0x19

    const-string v17, "म"

    aput-object v17, v5, v6

    const/16 v6, 0x1a

    const-string v17, "य"

    aput-object v17, v5, v6

    const/16 v6, 0x1b

    const-string v17, "र"

    aput-object v17, v5, v6

    const/16 v6, 0x1c

    const-string v17, "ऱ"

    aput-object v17, v5, v6

    const/16 v6, 0x1d

    const-string v17, "ल"

    aput-object v17, v5, v6

    const/16 v6, 0x1e

    const-string v17, "व"

    aput-object v17, v5, v6

    const/16 v6, 0x1f

    const-string v17, "श"

    aput-object v17, v5, v6

    const/16 v6, 0x20

    const-string v17, "ष"

    aput-object v17, v5, v6

    const/16 v6, 0x21

    const-string v17, "स"

    aput-object v17, v5, v6

    const/16 v6, 0x22

    const-string v17, "ह"

    aput-object v17, v5, v6

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v5, v7

    const-string v6, "kh"

    aput-object v6, v5, v8

    const-string v6, "g"

    aput-object v6, v5, v9

    const-string v6, "gh"

    aput-object v6, v5, v4

    const-string v6, "ng"

    aput-object v6, v5, v10

    const-string v6, "c"

    aput-object v6, v5, v11

    const-string v6, "ch"

    aput-object v6, v5, v12

    const-string v6, "j"

    aput-object v6, v5, v13

    const-string v6, "jh"

    aput-object v6, v5, v3

    const-string v3, "ny"

    aput-object v3, v5, v14

    const-string v3, "T"

    aput-object v3, v5, v15

    const-string v3, "Th"

    aput-object v3, v5, v16

    const-string v3, "D"

    aput-object v3, v5, v1

    const-string v1, "Dh"

    aput-object v1, v5, v22

    const-string v1, "N"

    aput-object v1, v5, v23

    const-string v1, "t"

    aput-object v1, v5, v2

    const/16 v1, 0x10

    const-string v2, "th"

    aput-object v2, v5, v1

    const/16 v1, 0x11

    const-string v2, "d"

    aput-object v2, v5, v1

    const/16 v1, 0x12

    const-string v2, "dh"

    aput-object v2, v5, v1

    const/16 v1, 0x13

    const-string v2, "n"

    aput-object v2, v5, v1

    const/16 v1, 0x14

    const-string v2, "Nn"

    aput-object v2, v5, v1

    const/16 v1, 0x15

    const-string v2, "p"

    aput-object v2, v5, v1

    const/16 v1, 0x16

    const-string v2, "ph"

    aput-object v2, v5, v1

    const/16 v1, 0x17

    const-string v2, "b"

    aput-object v2, v5, v1

    const/16 v1, 0x18

    const-string v2, "bh"

    aput-object v2, v5, v1

    const/16 v1, 0x19

    const-string v2, "m"

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    const-string v2, "y"

    aput-object v2, v5, v1

    const/16 v1, 0x1b

    aput-object v18, v5, v1

    const/16 v1, 0x1c

    const-string v2, "R"

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    const-string v2, "l"

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    const-string v2, "v"

    aput-object v2, v5, v1

    const/16 v1, 0x1f

    const-string v2, "sh"

    aput-object v2, v5, v1

    const/16 v1, 0x20

    const-string v2, "S"

    aput-object v2, v5, v1

    const/16 v1, 0x21

    const-string v2, "s"

    aput-object v2, v5, v1

    const/16 v1, 0x22

    const-string v2, "h"

    aput-object v2, v5, v1

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    const-string v2, "क़"

    aput-object v2, v1, v7

    const-string v2, "ख़"

    aput-object v2, v1, v8

    const-string v2, "ग़"

    aput-object v2, v1, v9

    const-string v2, "ज़"

    aput-object v2, v1, v4

    const-string v2, "ड़"

    aput-object v2, v1, v10

    const-string v2, "ढ़"

    aput-object v2, v1, v11

    const-string v2, "फ़"

    aput-object v2, v1, v12

    const-string v2, "य़"

    aput-object v2, v1, v13

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v7

    const-string v2, "khh"

    aput-object v2, v1, v8

    const-string v2, "ghh"

    aput-object v2, v1, v9

    const-string v2, "z"

    aput-object v2, v1, v4

    const-string v2, "Ddh"

    aput-object v2, v1, v10

    const-string v2, "rh"

    aput-object v2, v1, v11

    const-string v2, "f"

    aput-object v2, v1, v12

    const-string v2, "Y"

    aput-object v2, v1, v13

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    const-string v2, "ँ"

    aput-object v2, v1, v7

    const-string v2, "ं"

    aput-object v2, v1, v8

    const-string v2, "ः"

    aput-object v2, v1, v9

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v7

    const-string v2, "an"

    aput-object v2, v1, v8

    const-string v2, "ah"

    aput-object v2, v1, v9

    return-void
.end method

.method private mapUnicodeToPinyin()V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x23

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "a"

    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_21
    move v1, v0

    :goto_22
    const/16 v3, 0xc

    if-ge v1, v3, :cond_36

    iget-object v3, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_36
    move v1, v0

    :goto_37
    const/16 v4, 0x8

    if-ge v1, v4, :cond_4b

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4b
    move v1, v0

    :goto_4c
    const/4 v5, 0x3

    const/16 v6, 0xf

    if-ge v1, v2, :cond_c6

    move v7, v0

    :goto_52
    if-ge v7, v6, :cond_8a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    :cond_8a
    move v6, v0

    :goto_8b
    if-ge v6, v5, :cond_c3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    :cond_c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_c6
    move v1, v0

    :goto_c7
    if-ge v1, v4, :cond_13e

    move v7, v0

    :goto_ca
    if-ge v7, v6, :cond_102

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_ca

    :cond_102
    move v7, v0

    :goto_103
    if-ge v7, v5, :cond_13b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_103

    :cond_13b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    :cond_13e
    move v1, v0

    :goto_13f
    if-ge v1, v2, :cond_15c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "्"

    invoke-static {v4, v7, v8}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    :cond_15c
    move v1, v0

    :goto_15d
    if-ge v1, v3, :cond_162

    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    :cond_162
    move v1, v0

    :goto_163
    if-ge v1, v2, :cond_1ba

    move v3, v0

    :goto_166
    if-ge v3, v6, :cond_1b7

    move v4, v0

    :goto_169
    if-ge v4, v5, :cond_1b4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_169

    :cond_1b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_166

    :cond_1b7
    add-int/lit8 v1, v1, 0x1

    goto :goto_163

    :cond_1ba
    iget-object v0, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    const-string v1, "अं"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_39

    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1e

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    :cond_1e
    const/16 v5, 0x80

    if-ge v4, v5, :cond_26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_26
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    add-int/2addr v3, v6

    goto :goto_e

    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_16
    const-string v8, "HindiPinyinConverter"

    if-ge v7, v5, :cond_153

    invoke-static {v1, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v11, v7, v10

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v12, ""

    if-ge v11, v5, :cond_3b

    invoke-static {v1, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v13, v11, v10

    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_3c

    :cond_3b
    move-object v13, v12

    :goto_3c
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_58

    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    :cond_53
    :goto_53
    move/from16 v18, v5

    :goto_55
    move v7, v11

    goto/16 :goto_14a

    :cond_58
    add-int v14, v11, v10

    if-ge v14, v5, :cond_6b

    invoke-static {v1, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int v15, v14, v10

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_6c

    :cond_6b
    move-object v15, v12

    :goto_6c
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    const/4 v9, 0x2

    if-eqz v16, :cond_cd

    new-array v14, v9, [Ljava/lang/String;

    aput-object v7, v14, v6

    const/16 v16, 0x1

    aput-object v13, v14, v16

    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    add-int/2addr v11, v10

    goto :goto_53

    :cond_92
    iget-object v9, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    goto :goto_53

    :cond_a4
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    const/4 v10, 0x1

    aput-object v13, v9, v10

    const/4 v14, 0x2

    aput-object v15, v9, v14

    const/4 v14, 0x3

    new-array v1, v14, [Ljava/lang/String;

    aput-object v7, v1, v6

    aput-object v13, v1, v10

    const/4 v7, 0x2

    aput-object v15, v1, v7

    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v14

    const-string v1, "Ignore unknown hindi: %s%s%s %s"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :cond_cd
    move v1, v9

    new-array v9, v1, [Ljava/lang/String;

    aput-object v7, v9, v6

    const/16 v17, 0x1

    aput-object v13, v9, v17

    invoke-static {v9}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move/from16 v18, v5

    new-array v5, v1, [Ljava/lang/String;

    aput-object v9, v5, v6

    aput-object v15, v5, v17

    invoke-static {v5}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fa

    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    add-int/2addr v14, v10

    move v7, v14

    goto :goto_14a

    :cond_fa
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    add-int/2addr v11, v10

    goto/16 :goto_55

    :cond_10e
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    goto/16 :goto_55

    :cond_121
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v6

    const/4 v5, 0x1

    aput-object v13, v1, v5

    const/4 v9, 0x2

    aput-object v15, v1, v9

    const/4 v10, 0x3

    new-array v14, v10, [Ljava/lang/String;

    aput-object v7, v14, v6

    aput-object v13, v14, v5

    aput-object v15, v14, v9

    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const-string v5, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_55

    :goto_14a
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    move/from16 v5, v18

    goto/16 :goto_16

    :cond_153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v5, v4}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v6

    const-string v2, "hindiToPinyin(): using time %d ms"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ee"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "ii"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string v1, "oo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "uu"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    const-string v1, "v"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "w"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    sget-object p1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {p1}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "aa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object v1
.end method
