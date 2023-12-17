.class public Lkotlin/text/a;
.super La/b;
.source "Indent.kt"


# direct methods
.method public static final g0(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "<this>"

    .line 5
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v2, "\r\n"

    .line 10
    const-string v3, "\n"

    .line 12
    const-string v4, "\r"

    .line 14
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "asList(this)"

    .line 24
    invoke-static {v2, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v3, Lo3/a;

    .line 29
    new-instance v4, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-direct {v4, v2, v5}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>(Ljava/util/List;Z)V

    .line 35
    invoke-direct {v3, v0, v5, v5, v4}, Lo3/a;-><init>(Ljava/lang/CharSequence;IILh3/p;)V

    .line 38
    new-instance v2, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    .line 40
    invoke-direct {v2, v0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v4, Ln3/f;

    .line 45
    invoke-direct {v4, v3, v2}, Ln3/f;-><init>(Lo3/a;Lh3/l;)V

    .line 48
    invoke-static {v4}, Ln3/c;->g0(Ln3/b;)Ljava/util/List;

    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v4

    .line 61
    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v6

    .line 65
    const/4 v7, 0x1

    .line 66
    if-eqz v6, :cond_55

    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v6

    .line 72
    move-object v8, v6

    .line 73
    check-cast v8, Ljava/lang/String;

    .line 75
    invoke-static {v8}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v8

    .line 79
    xor-int/2addr v7, v8

    .line 80
    if-eqz v7, :cond_3c

    .line 82
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_3c

    .line 86
    :cond_55
    new-instance v4, Ljava/util/ArrayList;

    .line 88
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 91
    move-result v6

    .line 92
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v3

    .line 99
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v6

    .line 103
    const/4 v8, -0x1

    .line 104
    if-eqz v6, :cond_94

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/lang/String;

    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 115
    move-result v9

    .line 116
    move v10, v5

    .line 117
    :goto_74
    if-ge v10, v9, :cond_85

    .line 119
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    .line 122
    move-result v11

    .line 123
    invoke-static {v11}, La/b;->Q(C)Z

    .line 126
    move-result v11

    .line 127
    xor-int/2addr v11, v7

    .line 128
    if-eqz v11, :cond_82

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    add-int/lit8 v10, v10, 0x1

    .line 133
    goto :goto_74

    .line 134
    :cond_85
    move v10, v8

    .line 135
    :goto_86
    if-ne v10, v8, :cond_8c

    .line 137
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 140
    move-result v10

    .line 141
    :cond_8c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_62

    .line 149
    :cond_94
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v3

    .line 153
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v4

    .line 157
    const/4 v6, 0x0

    .line 158
    if-nez v4, :cond_a1

    .line 160
    move-object v4, v6

    .line 161
    goto :goto_bb

    .line 162
    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v4

    .line 166
    check-cast v4, Ljava/lang/Comparable;

    .line 168
    :cond_a7
    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_bb

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    move-result-object v9

    .line 178
    check-cast v9, Ljava/lang/Comparable;

    .line 180
    invoke-interface {v4, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 183
    move-result v10

    .line 184
    if-lez v10, :cond_a7

    .line 186
    move-object v4, v9

    .line 187
    goto :goto_a7

    .line 188
    :cond_bb
    :goto_bb
    check-cast v4, Ljava/lang/Integer;

    .line 190
    if-eqz v4, :cond_c4

    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 195
    move-result v3

    .line 196
    goto :goto_c5

    .line 197
    :cond_c4
    move v3, v5

    .line 198
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 201
    move-result v0

    .line 202
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 205
    move-result v4

    .line 206
    mul-int/2addr v4, v5

    .line 207
    add-int/2addr v4, v0

    .line 208
    sget-object v0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    .line 210
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 213
    move-result v9

    .line 214
    add-int/2addr v9, v8

    .line 215
    new-instance v10, Ljava/util/ArrayList;

    .line 217
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 223
    move-result-object v2

    .line 224
    move v8, v5

    .line 225
    :goto_e0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_142

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    move-result-object v11

    .line 235
    add-int/lit8 v12, v8, 0x1

    .line 237
    if-ltz v8, :cond_13a

    .line 239
    check-cast v11, Ljava/lang/String;

    .line 241
    if-eqz v8, :cond_f4

    .line 243
    if-ne v8, v9, :cond_fc

    .line 245
    :cond_f4
    invoke-static {v11}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_fc

    .line 251
    move-object v11, v6

    .line 252
    goto :goto_121

    .line 253
    :cond_fc
    invoke-static {v11, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    if-ltz v3, :cond_103

    .line 258
    move v8, v7

    .line 259
    goto :goto_104

    .line 260
    :cond_103
    move v8, v5

    .line 261
    :goto_104
    if-eqz v8, :cond_128

    .line 263
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 266
    move-result v8

    .line 267
    if-le v3, v8, :cond_10d

    .line 269
    goto :goto_10e

    .line 270
    :cond_10d
    move v8, v3

    .line 271
    :goto_10e
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 274
    move-result-object v8

    .line 275
    const-string v13, "this as java.lang.String).substring(startIndex)"

    .line 277
    invoke-static {v8, v13}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {v0, v8}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v8

    .line 284
    check-cast v8, Ljava/lang/String;

    .line 286
    if-nez v8, :cond_120

    .line 288
    goto :goto_121

    .line 289
    :cond_120
    move-object v11, v8

    .line 290
    :goto_121
    if-eqz v11, :cond_126

    .line 292
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_126
    move v8, v12

    .line 296
    goto :goto_e0

    .line 297
    :cond_128
    const-string v0, "Requested character count "

    .line 299
    const-string v1, " is less than zero."

    .line 301
    invoke-static {v0, v3, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    throw v1

    .line 315
    :cond_13a
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 317
    const-string v1, "Index overflow has happened."

    .line 319
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 322
    throw v0

    .line 323
    :cond_142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    const/4 v15, -0x1

    .line 329
    const/16 v17, 0x0

    .line 331
    const-string v12, "\n"

    .line 333
    const-string v14, ""

    .line 335
    const-string v16, "..."

    .line 337
    move-object v11, v0

    .line 338
    move-object v13, v14

    .line 339
    invoke-static/range {v10 .. v17}, Lz2/f;->g(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh3/l;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    const-string v1, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()"

    .line 348
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    return-object v0
.end method
