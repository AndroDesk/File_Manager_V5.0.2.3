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

    .line 1
    const-string v0, "b"

    .line 3
    const-string v1, "ㄅ"

    .line 5
    const-string v2, "p"

    .line 7
    const-string v3, "ㄆ"

    .line 9
    const-string v4, "m"

    .line 11
    const-string v5, "ㄇ"

    .line 13
    const-string v6, "f"

    .line 15
    const-string v7, "ㄈ"

    .line 17
    const-string v8, "d"

    .line 19
    const-string v9, "ㄉ"

    .line 21
    const-string v10, "t"

    .line 23
    const-string v11, "ㄊ"

    .line 25
    const-string v12, "n"

    .line 27
    const-string v13, "ㄋ"

    .line 29
    const-string v14, "l"

    .line 31
    const-string v15, "ㄌ"

    .line 33
    const-string v16, "g"

    .line 35
    const-string v17, "ㄍ"

    .line 37
    const-string v18, "k"

    .line 39
    const-string v19, "ㄎ"

    .line 41
    const-string v20, "h"

    .line 43
    const-string v21, "ㄏ"

    .line 45
    const-string v22, "j"

    .line 47
    const-string v23, "ㄐ"

    .line 49
    const-string v24, "q"

    .line 51
    const-string v25, "ㄑ"

    .line 53
    const-string v26, "x"

    .line 55
    const-string v27, "ㄒ"

    .line 57
    const-string v28, "zh"

    .line 59
    const-string v29, "ㄓ"

    .line 61
    const-string v30, "ch"

    .line 63
    const-string v31, "ㄔ"

    .line 65
    const-string v32, "sh"

    .line 67
    const-string v33, "ㄕ"

    .line 69
    const-string v34, "r"

    .line 71
    const-string v35, "ㄖ"

    .line 73
    const-string v36, "z"

    .line 75
    const-string v37, "ㄗ"

    .line 77
    const-string v38, "c"

    .line 79
    const-string v39, "ㄘ"

    .line 81
    const-string v40, "s"

    .line 83
    const-string v41, "ㄙ"

    .line 85
    const-string v42, "y"

    .line 87
    const-string v43, "ㄧ"

    .line 89
    const-string v44, "w"

    .line 91
    const-string v45, "ㄨ"

    .line 93
    const-string v46, "a"

    .line 95
    const-string v47, "ㄚ"

    .line 97
    const-string v48, "o"

    .line 99
    const-string v49, "ㄛ"

    .line 101
    const-string v50, "e"

    .line 103
    const-string v51, "ㄜ"

    .line 105
    const-string v52, "i"

    .line 107
    const-string v53, "ㄧ"

    .line 109
    const-string v54, "u"

    .line 111
    const-string v55, "ㄨ"

    .line 113
    const-string v56, "v"

    .line 115
    const-string v57, "ㄩ"

    .line 117
    const-string v58, "ao"

    .line 119
    const-string v59, "ㄠ"

    .line 121
    const-string v60, "ai"

    .line 123
    const-string v61, "ㄞ"

    .line 125
    const-string v62, "an"

    .line 127
    const-string v63, "ㄢ"

    .line 129
    const-string v64, "ang"

    .line 131
    const-string v65, "ㄤ"

    .line 133
    const-string v66, "ou"

    .line 135
    const-string v67, "ㄡ"

    .line 137
    const-string v68, "ong"

    .line 139
    const-string v69, "ㄨㄥ"

    .line 141
    const-string v70, "ei"

    .line 143
    const-string v71, "ㄟ"

    .line 145
    const-string v72, "en"

    .line 147
    const-string v73, "ㄣ"

    .line 149
    const-string v74, "eng"

    .line 151
    const-string v75, "ㄥ"

    .line 153
    const-string v76, "er"

    .line 155
    const-string v77, "ㄦ"

    .line 157
    const-string v78, "ie"

    .line 159
    const-string v79, "ㄧㄝ"

    .line 161
    const-string v80, "iu"

    .line 163
    const-string v81, "ㄧㄡ"

    .line 165
    const-string v82, "in"

    .line 167
    const-string v83, "ㄧㄣ"

    .line 169
    const-string v84, "ing"

    .line 171
    const-string v85, "ㄧㄥ"

    .line 173
    const-string v86, "iong"

    .line 175
    const-string v87, "ㄩㄥ"

    .line 177
    const-string v88, "ui"

    .line 179
    const-string v89, "ㄨㄟ"

    .line 181
    const-string v90, "un"

    .line 183
    const-string v91, "ㄨㄣ"

    .line 185
    const-string v92, "ue"

    .line 187
    const-string v93, "ㄩㄝ"

    .line 189
    const-string v94, "ve"

    .line 191
    const-string v95, "ㄩㄝ"

    .line 193
    const-string v96, "van"

    .line 195
    const-string v97, "ㄩㄢ"

    .line 197
    const-string v98, "vn"

    .line 199
    const-string v99, "ㄩㄣ"

    .line 201
    const-string v100, ""

    .line 203
    const-string v101, ""

    .line 205
    const-string v102, "zhi"

    .line 207
    const-string v103, "ㄓ"

    .line 209
    const-string v104, "chi"

    .line 211
    const-string v105, "ㄔ"

    .line 213
    const-string v106, "shi"

    .line 215
    const-string v107, "ㄕ"

    .line 217
    const-string v108, "ri"

    .line 219
    const-string v109, "ㄖ"

    .line 221
    const-string v110, "zi"

    .line 223
    const-string v111, "ㄗ"

    .line 225
    const-string v112, "ci"

    .line 227
    const-string v113, "ㄘ"

    .line 229
    const-string v114, "si"

    .line 231
    const-string v115, "ㄙ"

    .line 233
    const-string v116, "yi"

    .line 235
    const-string v117, "ㄧ"

    .line 237
    const-string v118, "ye"

    .line 239
    const-string v119, "ㄧㄝ"

    .line 241
    const-string v120, "you"

    .line 243
    const-string v121, "ㄧㄡ"

    .line 245
    const-string v122, "yin"

    .line 247
    const-string v123, "ㄧㄣ"

    .line 249
    const-string v124, "ying"

    .line 251
    const-string v125, "ㄧㄥ"

    .line 253
    const-string v126, "wu"

    .line 255
    const-string v127, "ㄨ"

    .line 257
    const-string v128, "wei"

    .line 259
    const-string v129, "ㄨㄟ"

    .line 261
    const-string v130, "wen"

    .line 263
    const-string v131, "ㄨㄣ"

    .line 265
    const-string v132, "yu"

    .line 267
    const-string v133, "ㄩ"

    .line 269
    const-string v134, "yue"

    .line 271
    const-string v135, "ㄩㄝ"

    .line 273
    const-string v136, "yuan"

    .line 275
    const-string v137, "ㄩㄢ"

    .line 277
    const-string v138, "yun"

    .line 279
    const-string v139, "ㄩㄣ"

    .line 281
    const-string v140, "yong"

    .line 283
    const-string v141, "ㄩㄥ"

    .line 285
    const-string v142, "ju"

    .line 287
    const-string v143, "ㄐㄩ"

    .line 289
    const-string v144, "jue"

    .line 291
    const-string v145, "ㄐㄩㄝ"

    .line 293
    const-string v146, "juan"

    .line 295
    const-string v147, "ㄐㄩㄢ"

    .line 297
    const-string v148, "jun"

    .line 299
    const-string v149, "ㄐㄩㄣ"

    .line 301
    const-string v150, "qu"

    .line 303
    const-string v151, "ㄑㄩ"

    .line 305
    const-string v152, "que"

    .line 307
    const-string v153, "ㄑㄩㄝ"

    .line 309
    const-string v154, "quan"

    .line 311
    const-string v155, "ㄑㄩㄢ"

    .line 313
    const-string v156, "qun"

    .line 315
    const-string v157, "ㄑㄩㄣ"

    .line 317
    const-string v158, "xu"

    .line 319
    const-string v159, "ㄒㄩ"

    .line 321
    const-string v160, "xue"

    .line 323
    const-string v161, "ㄒㄩㄝ"

    .line 325
    const-string v162, "xuan"

    .line 327
    const-string v163, "ㄒㄩㄢ"

    .line 329
    const-string v164, "xun"

    .line 331
    const-string v165, "ㄒㄩㄣ"

    .line 333
    filled-new-array/range {v0 .. v165}, [Ljava/lang/String;

    .line 336
    move-result-object v0

    .line 337
    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    .line 339
    invoke-static {}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->build()Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 342
    move-result-object v0

    .line 343
    sput-object v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 345
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build()Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;
    .registers 12

    .line 1
    new-instance v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    .line 7
    const-string v2, ""

    .line 9
    iput-object v2, v0, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    move v4, v3

    .line 14
    :goto_d
    sget-object v5, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    .line 16
    array-length v6, v5

    .line 17
    if-ge v3, v6, :cond_57

    .line 19
    aget-object v5, v5, v3

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 24
    move-result v6

    .line 25
    if-nez v6, :cond_1c

    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_54

    .line 29
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 32
    move-result v6

    .line 33
    move-object v8, v0

    .line 34
    move v7, v2

    .line 35
    :goto_22
    if-ge v7, v6, :cond_4a

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    .line 40
    move-result v9

    .line 41
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    .line 44
    move-result v9

    .line 45
    iget-object v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 47
    :goto_2e
    if-eqz v10, :cond_37

    .line 49
    iget-char v11, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    .line 51
    if-eq v11, v9, :cond_37

    .line 53
    iget-object v10, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 55
    goto :goto_2e

    .line 56
    :cond_37
    if-nez v10, :cond_46

    .line 58
    new-instance v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 60
    invoke-direct {v10, v1}, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;-><init>(Lmiuix/pinyin/utilities/ChinesePinyinConverter$1;)V

    .line 63
    iput-char v9, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    .line 65
    iget-object v9, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 67
    iput-object v9, v10, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 69
    iput-object v10, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    .line 71
    :cond_46
    move-object v8, v10

    .line 72
    add-int/lit8 v7, v7, 0x1

    .line 74
    goto :goto_22

    .line 75
    :cond_4a
    iput-boolean v4, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->specials:Z

    .line 77
    sget-object v5, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sPinyinToZhuyin:[Ljava/lang/String;

    .line 79
    add-int/lit8 v6, v3, 0x1

    .line 81
    aget-object v5, v5, v6

    .line 83
    iput-object v5, v8, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    .line 85
    :goto_54
    add-int/lit8 v3, v3, 0x2

    .line 87
    goto :goto_d

    .line 88
    :cond_57
    return-object v0
.end method

.method private static convert(Ljava/lang/String;ILjava/lang/StringBuilder;)I
    .registers 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    sget-object v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor;->sRoot:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    const/4 v2, 0x0

    move v3, p1

    move v4, v3

    :goto_9
    if-ge v3, v0, :cond_34

    if-eqz v1, :cond_34

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 4
    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->children:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    :goto_17
    if-eqz v1, :cond_20

    iget-char v6, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->ch:C

    if-eq v6, v5, :cond_20

    iget-object v1, v1, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->next:Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;

    goto :goto_17

    :cond_20
    if-eqz v1, :cond_31

    .line 5
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

    .line 6
    iget-object p0, v2, Lmiuix/pinyin/utilities/ChinesePinyinConverter$BopomofoConvertor$Node;->output:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    sub-int/2addr v4, p1

    return v4
.end method

.method public static convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .registers 5

    if-eqz p0, :cond_27

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_15

    .line 9
    :cond_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_19
    if-eq v0, v1, :cond_26

    .line 11
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
