.class public Lcom/android/fileexplorer/util/DocHelper;
.super Ljava/lang/Object;
.source "DocHelper.java"


# static fields
.field private static sDocExtGridIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDocExtGridIconsMirror:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDocExtGridTexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    sput-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    .line 22
    const-string v0, "doc"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f080198

    .line 31
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 34
    const-string v1, "docx"

    .line 36
    filled-new-array {v1}, [Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3, v2}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 43
    const-string v2, "ppt"

    .line 45
    filled-new-array {v2}, [Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    const v4, 0x7f08018a

    .line 52
    invoke-static {v3, v4}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 55
    const-string v3, "pptx"

    .line 57
    filled-new-array {v3}, [Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5, v4}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 64
    const-string v4, "xls"

    .line 66
    filled-new-array {v4}, [Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    const v6, 0x7f08019f

    .line 73
    invoke-static {v5, v6}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 76
    const-string v5, "xlsx"

    .line 78
    filled-new-array {v5}, [Ljava/lang/String;

    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v6}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 85
    const-string v6, "epub"

    .line 87
    filled-new-array {v6}, [Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    const v8, 0x7f08016d

    .line 94
    invoke-static {v7, v8}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 97
    const-string v7, "wps"

    .line 99
    filled-new-array {v7}, [Ljava/lang/String;

    .line 102
    move-result-object v8

    .line 103
    const v9, 0x7f08019b

    .line 106
    invoke-static {v8, v9}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 109
    const-string v8, "txt"

    .line 111
    filled-new-array {v8}, [Ljava/lang/String;

    .line 114
    move-result-object v9

    .line 115
    const v10, 0x7f08018f

    .line 118
    invoke-static {v9, v10}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 121
    const-string v9, "pdf"

    .line 123
    filled-new-array {v9}, [Ljava/lang/String;

    .line 126
    move-result-object v10

    .line 127
    const v11, 0x7f080183

    .line 130
    invoke-static {v10, v11}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 133
    const-string v10, "md"

    .line 135
    filled-new-array {v10}, [Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 139
    const v12, 0x7f080243

    .line 142
    invoke-static {v11, v12}, Lcom/android/fileexplorer/util/DocHelper;->addItem([Ljava/lang/String;I)V

    .line 145
    filled-new-array {v0}, [Ljava/lang/String;

    .line 148
    move-result-object v11

    .line 149
    const v13, 0x7f080134

    .line 152
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 155
    filled-new-array {v1}, [Ljava/lang/String;

    .line 158
    move-result-object v11

    .line 159
    const v13, 0x7f080136

    .line 162
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 165
    filled-new-array {v2}, [Ljava/lang/String;

    .line 168
    move-result-object v11

    .line 169
    const v13, 0x7f08013b

    .line 172
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 175
    filled-new-array {v3}, [Ljava/lang/String;

    .line 178
    move-result-object v11

    .line 179
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 182
    filled-new-array {v4}, [Ljava/lang/String;

    .line 185
    move-result-object v11

    .line 186
    const v13, 0x7f080142

    .line 189
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 192
    filled-new-array {v5}, [Ljava/lang/String;

    .line 195
    move-result-object v11

    .line 196
    const v13, 0x7f080144

    .line 199
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 202
    filled-new-array {v6}, [Ljava/lang/String;

    .line 205
    move-result-object v11

    .line 206
    const v13, 0x7f080132

    .line 209
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 212
    filled-new-array {v7}, [Ljava/lang/String;

    .line 215
    move-result-object v11

    .line 216
    const v13, 0x7f080140

    .line 219
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 222
    filled-new-array {v8}, [Ljava/lang/String;

    .line 225
    move-result-object v11

    .line 226
    const v13, 0x7f08013e

    .line 229
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 232
    filled-new-array {v9}, [Ljava/lang/String;

    .line 235
    move-result-object v11

    .line 236
    const v13, 0x7f080138

    .line 239
    invoke-static {v11, v13}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 242
    filled-new-array {v10}, [Ljava/lang/String;

    .line 245
    move-result-object v10

    .line 246
    invoke-static {v10, v12}, Lcom/android/fileexplorer/util/DocHelper;->addItemMirror([Ljava/lang/String;I)V

    .line 249
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    const v1, 0x7f110136

    .line 256
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 259
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    const v1, 0x7f110134

    .line 266
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 269
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    const v1, 0x7f110138

    .line 276
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 279
    filled-new-array {v7}, [Ljava/lang/String;

    .line 282
    move-result-object v0

    .line 283
    const v1, 0x7f110137

    .line 286
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 289
    filled-new-array {v8}, [Ljava/lang/String;

    .line 292
    move-result-object v0

    .line 293
    const v1, 0x7f110135

    .line 296
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 299
    filled-new-array {v9}, [Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    const v1, 0x7f110133

    .line 306
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 309
    filled-new-array {v6}, [Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    const v1, 0x7f110132

    .line 316
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DocHelper;->addTextItem([Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addItem([Ljava/lang/String;I)V
    .registers 7

    .line 1
    if-eqz p0, :cond_18

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_18

    .line 7
    aget-object v2, p0, v1

    .line 9
    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-void
.end method

.method private static addItemMirror([Ljava/lang/String;I)V
    .registers 7

    .line 1
    if-eqz p0, :cond_18

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_18

    .line 7
    aget-object v2, p0, v1

    .line 9
    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-void
.end method

.method private static addTextItem([Ljava/lang/String;I)V
    .registers 7

    .line 1
    if-eqz p0, :cond_18

    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v1, v0, :cond_18

    .line 7
    aget-object v2, p0, v1

    .line 9
    sget-object v3, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_4

    .line 25
    :cond_18
    return-void
.end method

.method public static getDocGridDefaultIcon(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIcons:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    if-eqz p0, :cond_1b

    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1b
    const p0, 0x7f080131

    .line 31
    return p0
.end method

.method public static getDocGridDefaultIconMirror(Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridIconsMirror:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    if-eqz p0, :cond_1b

    .line 23
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1b
    const p0, 0x7f080132

    .line 31
    return p0
.end method

.method public static getDocSignText(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    sget-object v0, Lcom/android/fileexplorer/util/DocHelper;->sDocExtGridTexts:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    if-nez p0, :cond_17

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v1

    .line 28
    :goto_1b
    return v1
.end method
