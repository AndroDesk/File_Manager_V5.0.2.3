.class Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;
.super Ljava/lang/Object;
.source "ChinesePinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/ChinesePinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BopomofoConvertor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;
    }
.end annotation


# static fields
.field private static final sPinyinToZhuyin:[Ljava/lang/String;

.field private static final sRoot:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;


# direct methods
.method public static constructor <clinit>()V
    .registers 166

    const-string v0, "b"

    const-string v1, "ㄅ"

    const-string v2, "p"

    const-string v3, "ㄆ"

    const-string v4, "m"

    const-string v5, "ㄇ"

    const-string v6, "f"

    const-string v7, "ㄈ"

    const-string v8, "d"

    const-string v9, "ㄉ"

    const-string v10, "t"

    const-string v11, "ㄊ"

    const-string v12, "n"

    const-string v13, "ㄋ"

    const-string v14, "l"

    const-string v15, "ㄌ"

    const-string v16, "g"

    const-string v17, "ㄍ"

    const-string v18, "k"

    const-string v19, "ㄎ"

    const-string v20, "h"

    const-string v21, "ㄏ"

    const-string v22, "j"

    const-string v23, "ㄐ"

    const-string v24, "q"

    const-string v25, "ㄑ"

    const-string v26, "x"

    const-string v27, "ㄒ"

    const-string v28, "zh"

    const-string v29, "ㄓ"

    const-string v30, "ch"

    const-string v31, "ㄔ"

    const-string v32, "sh"

    const-string v33, "ㄕ"

    const-string v34, "r"

    const-string v35, "ㄖ"

    const-string v36, "z"

    const-string v37, "ㄗ"

    const-string v38, "c"

    const-string v39, "ㄘ"

    const-string v40, "s"

    const-string v41, "ㄙ"

    const-string v42, "y"

    const-string v43, "ㄧ"

    const-string v44, "w"

    const-string v45, "ㄨ"

    const-string v46, "a"

    const-string v47, "ㄚ"

    const-string v48, "o"

    const-string v49, "ㄛ"

    const-string v50, "e"

    const-string v51, "ㄜ"

    const-string v52, "i"

    const-string v53, "ㄧ"

    const-string v54, "u"

    const-string v55, "ㄨ"

    const-string v56, "v"

    const-string v57, "ㄩ"

    const-string v58, "ao"

    const-string v59, "ㄠ"

    const-string v60, "ai"

    const-string v61, "ㄞ"

    const-string v62, "an"

    const-string v63, "ㄢ"

    const-string v64, "ang"

    const-string v65, "ㄤ"

    const-string v66, "ou"

    const-string v67, "ㄡ"

    const-string v68, "ong"

    const-string v69, "ㄨㄥ"

    const-string v70, "ei"

    const-string v71, "ㄟ"

    const-string v72, "en"

    const-string v73, "ㄣ"

    const-string v74, "eng"

    const-string v75, "ㄥ"

    const-string v76, "er"

    const-string v77, "ㄦ"

    const-string v78, "ie"

    const-string v79, "ㄧㄝ"

    const-string v80, "iu"

    const-string v81, "ㄧㄡ"

    const-string v82, "in"

    const-string v83, "ㄧㄣ"

    const-string v84, "ing"

    const-string v85, "ㄧㄥ"

    const-string v86, "iong"

    const-string v87, "ㄩㄥ"

    const-string v88, "ui"

    const-string v89, "ㄨㄟ"

    const-string v90, "un"

    const-string v91, "ㄨㄣ"

    const-string v92, "ue"

    const-string v93, "ㄩㄝ"

    const-string v94, "ve"

    const-string v95, "ㄩㄝ"

    const-string v96, "van"

    const-string v97, "ㄩㄢ"

    const-string v98, "vn"

    const-string v99, "ㄩㄣ"

    const-string v100, ""

    const-string v101, ""

    const-string v102, "zhi"

    const-string v103, "ㄓ"

    const-string v104, "chi"

    const-string v105, "ㄔ"

    const-string v106, "shi"

    const-string v107, "ㄕ"

    const-string v108, "ri"

    const-string v109, "ㄖ"

    const-string v110, "zi"

    const-string v111, "ㄗ"

    const-string v112, "ci"

    const-string v113, "ㄘ"

    const-string v114, "si"

    const-string v115, "ㄙ"

    const-string v116, "yi"

    const-string v117, "ㄧ"

    const-string v118, "ye"

    const-string v119, "ㄧㄝ"

    const-string v120, "you"

    const-string v121, "ㄧㄡ"

    const-string v122, "yin"

    const-string v123, "ㄧㄣ"

    const-string v124, "ying"

    const-string v125, "ㄧㄥ"

    const-string v126, "wu"

    const-string v127, "ㄨ"

    const-string v128, "wei"

    const-string v129, "ㄨㄟ"

    const-string v130, "wen"

    const-string v131, "ㄨㄣ"

    const-string v132, "yu"

    const-string v133, "ㄩ"

    const-string v134, "yue"

    const-string v135, "ㄩㄝ"

    const-string v136, "yuan"

    const-string v137, "ㄩㄢ"

    const-string v138, "yun"

    const-string v139, "ㄩㄣ"

    const-string v140, "yong"

    const-string v141, "ㄩㄥ"

    const-string v142, "ju"

    const-string v143, "ㄐㄩ"

    const-string v144, "jue"

    const-string v145, "ㄐㄩㄝ"

    const-string v146, "juan"

    const-string v147, "ㄐㄩㄢ"

    const-string v148, "jun"

    const-string v149, "ㄐㄩㄣ"

    const-string v150, "qu"

    const-string v151, "ㄑㄩ"

    const-string v152, "que"

    const-string v153, "ㄑㄩㄝ"

    const-string v154, "quan"

    const-string v155, "ㄑㄩㄢ"

    const-string v156, "qun"

    const-string v157, "ㄑㄩㄣ"

    const-string v158, "xu"

    const-string v159, "ㄒㄩ"

    const-string v160, "xue"

    const-string v161, "ㄒㄩㄝ"

    const-string v162, "xuan"

    const-string v163, "ㄒㄩㄢ"

    const-string v164, "xun"

    const-string v165, "ㄒㄩㄣ"

    filled-new-array/range {v0 .. v165}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    invoke-static {}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->build()Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build()Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;
    .registers 12

    new-instance v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    const-string v2, ""

    iput-object v2, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_d
    sget-object v5, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_57

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1c

    const/4 v4, 0x1

    goto :goto_54

    :cond_1c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move-object v8, v0

    move v7, v2

    :goto_22
    if-ge v7, v6, :cond_4a

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    iget-object v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_2e
    if-eqz v10, :cond_37

    iget-char v11, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    if-eq v11, v9, :cond_37

    iget-object v10, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    goto :goto_2e

    :cond_37
    if-nez v10, :cond_46

    new-instance v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    invoke-direct {v10, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    iput-char v9, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    iget-object v9, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    iput-object v9, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    iput-object v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    :cond_46
    move-object v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_4a
    iput-boolean v4, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->specials:Z

    sget-object v5, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    iput-object v5, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    :goto_54
    add-int/lit8 v3, v3, 0x2

    goto :goto_d

    :cond_57
    return-object v0
.end method

.method private static convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    const/4 v2, 0x0

    move v3, p1

    move v4, v3

    :goto_9
    if-ge v3, v0, :cond_34

    if-eqz v1, :cond_34

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_17
    if-eqz v1, :cond_20

    iget-char v6, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    if-eq v6, v5, :cond_20

    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    goto :goto_17

    :cond_20
    if-eqz v1, :cond_31

    iget-object v5, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    if-eqz v5, :cond_31

    iget-boolean v5, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->specials:Z

    if-eqz v5, :cond_2e

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_31

    :cond_2e
    add-int/lit8 v4, v3, 0x1

    move-object v2, v1

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_34
    if-eqz v2, :cond_3b

    iget-object p0, v2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    sub-int/2addr v4, p1

    return v4
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .registers 5

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_15

    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_19
    if-eq v0, v1, :cond_26

    invoke-static {p0, v0, p1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I

    move-result v2

    if-gtz v2, :cond_24

    const-string p0, ""

    return-object p0

    :cond_24
    add-int/2addr v0, v2

    goto :goto_19

    :cond_26
    return-object p1

    :cond_27
    :goto_27
    return-object p0
.end method
