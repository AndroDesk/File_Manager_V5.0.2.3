.class final Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;
.super Lcom/airbnb/lottie/parser/moshi/JsonReader;
.source "JsonUtf8Reader.java"


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/a;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private final source:Lp4/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "\'\\"

    .line 3
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 9
    const-string v0, "\"\\"

    .line 11
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 17
    const-string v0, "{}[]:, \n\t\r\f/\\;#="

    .line 19
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 25
    const-string v0, "\n\r"

    .line 27
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 33
    const-string v0, "*/"

    .line 35
    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    .line 41
    return-void
.end method

.method public constructor <init>(Lp4/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 7
    if-eqz p1, :cond_15

    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 11
    invoke-interface {p1}, Lp4/b;->c()Lokio/a;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 17
    const/4 p1, 0x6

    .line 18
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    .line 24
    const-string v0, "source == null"

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method private checkLenient()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method private doPeek()I
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 5
    iget v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 7
    add-int/lit8 v3, v2, -0x1

    .line 9
    aget v3, v1, v3

    .line 11
    const-wide/16 v4, 0x0

    .line 13
    const/16 v6, 0x8

    .line 15
    const/16 v8, 0x22

    .line 17
    const/16 v9, 0x5d

    .line 19
    const/4 v10, 0x3

    .line 20
    const/4 v11, 0x7

    .line 21
    const/16 v12, 0x3b

    .line 23
    const/16 v13, 0x2c

    .line 25
    const/4 v14, 0x4

    .line 26
    const/4 v15, 0x2

    .line 27
    const/4 v7, 0x1

    .line 28
    if-ne v3, v7, :cond_22

    .line 30
    sub-int/2addr v2, v7

    .line 31
    aput v15, v1, v2

    .line 33
    goto/16 :goto_9e

    .line 35
    :cond_22
    if-ne v3, v15, :cond_41

    .line 37
    invoke-direct {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 40
    move-result v1

    .line 41
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 43
    invoke-virtual {v2}, Lokio/a;->h()B

    .line 46
    if-eq v1, v13, :cond_9e

    .line 48
    if-eq v1, v12, :cond_3d

    .line 50
    if-ne v1, v9, :cond_36

    .line 52
    iput v14, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 54
    return v14

    .line 55
    :cond_36
    const-string v1, "Unterminated array"

    .line 57
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 60
    move-result-object v1

    .line 61
    throw v1

    .line 62
    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 65
    goto :goto_9e

    .line 66
    :cond_41
    const/4 v15, 0x5

    .line 67
    if-eq v3, v10, :cond_12a

    .line 69
    if-ne v3, v15, :cond_48

    .line 71
    goto/16 :goto_12a

    .line 73
    :cond_48
    if-ne v3, v14, :cond_82

    .line 75
    sub-int/2addr v2, v7

    .line 76
    aput v15, v1, v2

    .line 78
    invoke-direct {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 81
    move-result v1

    .line 82
    iget-object v2, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 84
    invoke-virtual {v2}, Lokio/a;->h()B

    .line 87
    const/16 v2, 0x3a

    .line 89
    if-eq v1, v2, :cond_9e

    .line 91
    const/16 v2, 0x3d

    .line 93
    if-ne v1, v2, :cond_7b

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 98
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 100
    const-wide/16 v14, 0x1

    .line 102
    invoke-interface {v1, v14, v15}, Lp4/b;->request(J)Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_9e

    .line 108
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 110
    invoke-virtual {v1, v4, v5}, Lokio/a;->a(J)B

    .line 113
    move-result v1

    .line 114
    const/16 v2, 0x3e

    .line 116
    if-ne v1, v2, :cond_9e

    .line 118
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 120
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 123
    goto :goto_9e

    .line 124
    :cond_7b
    const-string v1, "Expected \':\'"

    .line 126
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 129
    move-result-object v1

    .line 130
    throw v1

    .line 131
    :cond_82
    const/4 v14, 0x6

    .line 132
    if-ne v3, v14, :cond_89

    .line 134
    sub-int/2addr v2, v7

    .line 135
    aput v11, v1, v2

    .line 137
    goto :goto_9e

    .line 138
    :cond_89
    if-ne v3, v11, :cond_9c

    .line 140
    const/4 v1, 0x0

    .line 141
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 144
    move-result v1

    .line 145
    const/4 v2, -0x1

    .line 146
    if-ne v1, v2, :cond_98

    .line 148
    const/16 v1, 0x12

    .line 150
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 152
    return v1

    .line 153
    :cond_98
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 156
    goto :goto_9e

    .line 157
    :cond_9c
    if-eq v3, v6, :cond_122

    .line 159
    :cond_9e
    :goto_9e
    invoke-direct {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 162
    move-result v1

    .line 163
    if-eq v1, v8, :cond_118

    .line 165
    const/16 v2, 0x27

    .line 167
    if-eq v1, v2, :cond_10d

    .line 169
    if-eq v1, v13, :cond_fa

    .line 171
    if-eq v1, v12, :cond_fa

    .line 173
    const/16 v2, 0x5b

    .line 175
    if-eq v1, v2, :cond_f2

    .line 177
    if-eq v1, v9, :cond_e7

    .line 179
    const/16 v2, 0x7b

    .line 181
    if-eq v1, v2, :cond_df

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_bd

    .line 189
    return v1

    .line 190
    :cond_bd
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekNumber()I

    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_c4

    .line 196
    return v1

    .line 197
    :cond_c4
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 199
    invoke-virtual {v1, v4, v5}, Lokio/a;->a(J)B

    .line 202
    move-result v1

    .line 203
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_d8

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 212
    const/16 v1, 0xa

    .line 214
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 216
    return v1

    .line 217
    :cond_d8
    const-string v1, "Expected value"

    .line 219
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 222
    move-result-object v1

    .line 223
    throw v1

    .line 224
    :cond_df
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 226
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 229
    iput v7, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 231
    return v7

    .line 232
    :cond_e7
    if-ne v3, v7, :cond_fa

    .line 234
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 236
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 239
    const/4 v1, 0x4

    .line 240
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 242
    return v1

    .line 243
    :cond_f2
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 245
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 248
    iput v10, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 250
    return v10

    .line 251
    :cond_fa
    if-eq v3, v7, :cond_107

    .line 253
    const/4 v1, 0x2

    .line 254
    if-ne v3, v1, :cond_100

    .line 256
    goto :goto_107

    .line 257
    :cond_100
    const-string v1, "Unexpected value"

    .line 259
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 262
    move-result-object v1

    .line 263
    throw v1

    .line 264
    :cond_107
    :goto_107
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 267
    iput v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 269
    return v11

    .line 270
    :cond_10d
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 273
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 275
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 278
    iput v6, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 280
    return v6

    .line 281
    :cond_118
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 283
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 286
    const/16 v1, 0x9

    .line 288
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 290
    return v1

    .line 291
    :cond_122
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 293
    const-string v2, "JsonReader is closed"

    .line 295
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 298
    throw v1

    .line 299
    :cond_12a
    :goto_12a
    sub-int/2addr v2, v7

    .line 300
    const/4 v4, 0x4

    .line 301
    aput v4, v1, v2

    .line 303
    const/16 v1, 0x7d

    .line 305
    if-ne v3, v15, :cond_14f

    .line 307
    invoke-direct {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 310
    move-result v2

    .line 311
    iget-object v4, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 313
    invoke-virtual {v4}, Lokio/a;->h()B

    .line 316
    if-eq v2, v13, :cond_14f

    .line 318
    if-eq v2, v12, :cond_14c

    .line 320
    if-ne v2, v1, :cond_145

    .line 322
    const/4 v1, 0x2

    .line 323
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 325
    return v1

    .line 326
    :cond_145
    const-string v1, "Unterminated object"

    .line 328
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 331
    move-result-object v1

    .line 332
    throw v1

    .line 333
    :cond_14c
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 336
    :cond_14f
    invoke-direct {v0, v7}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    .line 339
    move-result v2

    .line 340
    if-eq v2, v8, :cond_18e

    .line 342
    const/16 v4, 0x27

    .line 344
    if-eq v2, v4, :cond_181

    .line 346
    const-string v4, "Expected name"

    .line 348
    if-eq v2, v1, :cond_171

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 353
    int-to-char v1, v2

    .line 354
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_16c

    .line 360
    const/16 v1, 0xe

    .line 362
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 364
    return v1

    .line 365
    :cond_16c
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 368
    move-result-object v1

    .line 369
    throw v1

    .line 370
    :cond_171
    if-eq v3, v15, :cond_17c

    .line 372
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 374
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 377
    const/4 v1, 0x2

    .line 378
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 380
    return v1

    .line 381
    :cond_17c
    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 384
    move-result-object v1

    .line 385
    throw v1

    .line 386
    :cond_181
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 388
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 394
    const/16 v1, 0xc

    .line 396
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 398
    return v1

    .line 399
    :cond_18e
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 401
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 404
    const/16 v1, 0xd

    .line 406
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 408
    return v1
.end method

.method private findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .registers 7

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_5
    if-ge v2, v0, :cond_1f

    .line 8
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 10
    aget-object v3, v3, v2

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1c

    .line 18
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 20
    iget-object p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 22
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 26
    aput-object p1, p2, v0

    .line 28
    return v2

    .line 29
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_5

    .line 32
    :cond_1f
    const/4 p1, -0x1

    .line 33
    return p1
.end method

.method private findString(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .registers 7

    .line 1
    iget-object v0, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_5
    if-ge v2, v0, :cond_23

    .line 8
    iget-object v3, p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 10
    aget-object v3, v3, v2

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_20

    .line 18
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 20
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 22
    iget p2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 24
    add-int/lit8 p2, p2, -0x1

    .line 26
    aget v0, p1, p2

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    aput v0, p1, p2

    .line 32
    return v2

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_5

    .line 36
    :cond_23
    const/4 p1, -0x1

    .line 37
    return p1
.end method

.method private isLiteral(I)Z
    .registers 3

    .line 1
    const/16 v0, 0x9

    .line 3
    if-eq p1, v0, :cond_3c

    .line 5
    const/16 v0, 0xa

    .line 7
    if-eq p1, v0, :cond_3c

    .line 9
    const/16 v0, 0xc

    .line 11
    if-eq p1, v0, :cond_3c

    .line 13
    const/16 v0, 0xd

    .line 15
    if-eq p1, v0, :cond_3c

    .line 17
    const/16 v0, 0x20

    .line 19
    if-eq p1, v0, :cond_3c

    .line 21
    const/16 v0, 0x23

    .line 23
    if-eq p1, v0, :cond_39

    .line 25
    const/16 v0, 0x2c

    .line 27
    if-eq p1, v0, :cond_3c

    .line 29
    const/16 v0, 0x2f

    .line 31
    if-eq p1, v0, :cond_39

    .line 33
    const/16 v0, 0x3d

    .line 35
    if-eq p1, v0, :cond_39

    .line 37
    const/16 v0, 0x7b

    .line 39
    if-eq p1, v0, :cond_3c

    .line 41
    const/16 v0, 0x7d

    .line 43
    if-eq p1, v0, :cond_3c

    .line 45
    const/16 v0, 0x3a

    .line 47
    if-eq p1, v0, :cond_3c

    .line 49
    const/16 v0, 0x3b

    .line 51
    if-eq p1, v0, :cond_39

    .line 53
    packed-switch p1, :pswitch_data_3e

    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_39
    :pswitch_39  #0x5c
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 61
    :cond_3c
    :pswitch_3c  #0x5b, 0x5d
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_data_3e
    .packed-switch 0x5b
        :pswitch_3c  #0000005b
        :pswitch_39  #0000005c
        :pswitch_3c  #0000005d
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    move v1, v0

    .line 3
    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 5
    add-int/lit8 v3, v1, 0x1

    .line 7
    int-to-long v4, v3

    .line 8
    invoke-interface {v2, v4, v5}, Lp4/b;->request(J)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_82

    .line 14
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 16
    int-to-long v4, v1

    .line 17
    invoke-virtual {v2, v4, v5}, Lokio/a;->a(J)B

    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xa

    .line 23
    if-eq v1, v2, :cond_80

    .line 25
    const/16 v2, 0x20

    .line 27
    if-eq v1, v2, :cond_80

    .line 29
    const/16 v2, 0xd

    .line 31
    if-eq v1, v2, :cond_80

    .line 33
    const/16 v2, 0x9

    .line 35
    if-ne v1, v2, :cond_25

    .line 37
    goto :goto_80

    .line 38
    :cond_25
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 42
    int-to-long v3, v3

    .line 43
    invoke-virtual {v2, v3, v4}, Lokio/a;->m(J)V

    .line 46
    const/16 v2, 0x2f

    .line 48
    if-ne v1, v2, :cond_74

    .line 50
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 52
    const-wide/16 v4, 0x2

    .line 54
    invoke-interface {v3, v4, v5}, Lp4/b;->request(J)Z

    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3c

    .line 60
    return v1

    .line 61
    :cond_3c
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 64
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 66
    const-wide/16 v4, 0x1

    .line 68
    invoke-virtual {v3, v4, v5}, Lokio/a;->a(J)B

    .line 71
    move-result v3

    .line 72
    const/16 v4, 0x2a

    .line 74
    if-eq v3, v4, :cond_5c

    .line 76
    if-eq v3, v2, :cond_4e

    .line 78
    return v1

    .line 79
    :cond_4e
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 81
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 84
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 86
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 89
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 92
    goto :goto_1

    .line 93
    :cond_5c
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 95
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 98
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 100
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 103
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6d

    .line 109
    goto :goto_1

    .line 110
    :cond_6d
    const-string p1, "Unterminated comment"

    .line 112
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 115
    move-result-object p1

    .line 116
    throw p1

    .line 117
    :cond_74
    const/16 v2, 0x23

    .line 119
    if-ne v1, v2, :cond_7f

    .line 121
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->checkLenient()V

    .line 124
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    .line 127
    goto :goto_1

    .line 128
    :cond_7f
    return v1

    .line 129
    :cond_80
    :goto_80
    move v1, v3

    .line 130
    goto :goto_2

    .line 131
    :cond_82
    if-nez p1, :cond_86

    .line 133
    const/4 p1, -0x1

    .line 134
    return p1

    .line 135
    :cond_86
    new-instance p1, Ljava/io/EOFException;

    .line 137
    const-string v0, "End of input"

    .line 139
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 4
    invoke-interface {v1, p1}, Lp4/b;->d(Lokio/ByteString;)J

    .line 7
    move-result-wide v1

    .line 8
    const-wide/16 v3, -0x1

    .line 10
    cmp-long v3, v1, v3

    .line 12
    if-eqz v3, :cond_55

    .line 14
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 16
    invoke-virtual {v3, v1, v2}, Lokio/a;->a(J)B

    .line 19
    move-result v3

    .line 20
    const/16 v4, 0x5c

    .line 22
    if-ne v3, v4, :cond_34

    .line 24
    if-nez v0, :cond_1e

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    :cond_1e
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 33
    invoke-virtual {v3, v1, v2}, Lokio/a;->k(J)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 42
    invoke-virtual {v1}, Lokio/a;->h()B

    .line 45
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_1

    .line 53
    :cond_34
    if-nez v0, :cond_42

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 57
    invoke-virtual {p1, v1, v2}, Lokio/a;->k(J)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 63
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 66
    return-object p1

    .line 67
    :cond_42
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 69
    invoke-virtual {p1, v1, v2}, Lokio/a;->k(J)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 78
    invoke-virtual {p1}, Lokio/a;->h()B

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_55
    const-string p1, "Unterminated string"

    .line 88
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 91
    move-result-object p1

    .line 92
    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 5
    invoke-interface {v0, v1}, Lp4/b;->d(Lokio/ByteString;)J

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, -0x1

    .line 11
    cmp-long v2, v0, v2

    .line 13
    if-eqz v2, :cond_15

    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 17
    invoke-virtual {v2, v0, v1}, Lokio/a;->k(J)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_22

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    :try_start_1a
    iget-wide v1, v0, Lokio/a;->b:J

    .line 29
    sget-object v3, Lp4/j;->a:Ljava/nio/charset/Charset;

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lokio/a;->j(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 34
    move-result-object v0
    :try_end_22
    .catch Ljava/io/EOFException; {:try_start_1a .. :try_end_22} :catch_23

    .line 35
    :goto_22
    return-object v0

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/AssertionError;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    throw v1
.end method

.method private peekKeyword()I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lokio/a;->a(J)B

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/16 v2, 0x74

    .line 12
    if-eq v0, v2, :cond_31

    .line 14
    const/16 v2, 0x54

    .line 16
    if-ne v0, v2, :cond_12

    .line 18
    goto :goto_31

    .line 19
    :cond_12
    const/16 v2, 0x66

    .line 21
    if-eq v0, v2, :cond_2b

    .line 23
    const/16 v2, 0x46

    .line 25
    if-ne v0, v2, :cond_1b

    .line 27
    goto :goto_2b

    .line 28
    :cond_1b
    const/16 v2, 0x6e

    .line 30
    if-eq v0, v2, :cond_25

    .line 32
    const/16 v2, 0x4e

    .line 34
    if-ne v0, v2, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    return v1

    .line 38
    :cond_25
    :goto_25
    const/4 v0, 0x7

    .line 39
    const-string v2, "null"

    .line 41
    const-string v3, "NULL"

    .line 43
    goto :goto_36

    .line 44
    :cond_2b
    :goto_2b
    const/4 v0, 0x6

    .line 45
    const-string v2, "false"

    .line 47
    const-string v3, "FALSE"

    .line 49
    goto :goto_36

    .line 50
    :cond_31
    :goto_31
    const/4 v0, 0x5

    .line 51
    const-string v2, "true"

    .line 53
    const-string v3, "TRUE"

    .line 55
    :goto_36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    move-result v4

    .line 59
    const/4 v5, 0x1

    .line 60
    :goto_3b
    if-ge v5, v4, :cond_5f

    .line 62
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 64
    add-int/lit8 v7, v5, 0x1

    .line 66
    int-to-long v8, v7

    .line 67
    invoke-interface {v6, v8, v9}, Lp4/b;->request(J)Z

    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_49

    .line 73
    return v1

    .line 74
    :cond_49
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 76
    int-to-long v8, v5

    .line 77
    invoke-virtual {v6, v8, v9}, Lokio/a;->a(J)B

    .line 80
    move-result v6

    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 84
    move-result v8

    .line 85
    if-eq v6, v8, :cond_5d

    .line 87
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 90
    move-result v5

    .line 91
    if-eq v6, v5, :cond_5d

    .line 93
    return v1

    .line 94
    :cond_5d
    move v5, v7

    .line 95
    goto :goto_3b

    .line 96
    :cond_5f
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 98
    add-int/lit8 v3, v4, 0x1

    .line 100
    int-to-long v5, v3

    .line 101
    invoke-interface {v2, v5, v6}, Lp4/b;->request(J)Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_78

    .line 107
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 109
    int-to-long v5, v4

    .line 110
    invoke-virtual {v2, v5, v6}, Lokio/a;->a(J)B

    .line 113
    move-result v2

    .line 114
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_78

    .line 120
    return v1

    .line 121
    :cond_78
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 123
    int-to-long v2, v4

    .line 124
    invoke-virtual {v1, v2, v3}, Lokio/a;->m(J)V

    .line 127
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 129
    return v0
.end method

.method private peekNumber()I
    .registers 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    move-wide v8, v1

    .line 8
    move v7, v3

    .line 9
    move v5, v4

    .line 10
    move v6, v5

    .line 11
    move v10, v6

    .line 12
    :goto_b
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 14
    add-int/lit8 v12, v5, 0x1

    .line 16
    int-to-long v13, v12

    .line 17
    invoke-interface {v11, v13, v14}, Lp4/b;->request(J)Z

    .line 20
    move-result v11

    .line 21
    const/4 v15, 0x2

    .line 22
    if-nez v11, :cond_19

    .line 24
    goto/16 :goto_84

    .line 26
    :cond_19
    iget-object v11, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 28
    int-to-long v13, v5

    .line 29
    invoke-virtual {v11, v13, v14}, Lokio/a;->a(J)B

    .line 32
    move-result v11

    .line 33
    const/16 v13, 0x2b

    .line 35
    const/4 v14, 0x5

    .line 36
    if-eq v11, v13, :cond_d3

    .line 38
    const/16 v13, 0x45

    .line 40
    if-eq v11, v13, :cond_ca

    .line 42
    const/16 v13, 0x65

    .line 44
    if-eq v11, v13, :cond_ca

    .line 46
    const/16 v13, 0x2d

    .line 48
    if-eq v11, v13, :cond_c0

    .line 50
    const/16 v13, 0x2e

    .line 52
    if-eq v11, v13, :cond_bb

    .line 54
    const/16 v13, 0x30

    .line 56
    if-lt v11, v13, :cond_7e

    .line 58
    const/16 v13, 0x39

    .line 60
    if-le v11, v13, :cond_3e

    .line 62
    goto :goto_7e

    .line 63
    :cond_3e
    if-eq v6, v3, :cond_77

    .line 65
    if-nez v6, :cond_43

    .line 67
    goto :goto_77

    .line 68
    :cond_43
    if-ne v6, v15, :cond_67

    .line 70
    cmp-long v5, v8, v1

    .line 72
    if-nez v5, :cond_4a

    .line 74
    return v4

    .line 75
    :cond_4a
    const-wide/16 v13, 0xa

    .line 77
    mul-long/2addr v13, v8

    .line 78
    add-int/lit8 v11, v11, -0x30

    .line 80
    int-to-long v3, v11

    .line 81
    sub-long/2addr v13, v3

    .line 82
    const-wide v3, -0xcccccccccccccccL

    .line 87
    cmp-long v3, v8, v3

    .line 89
    if-gtz v3, :cond_63

    .line 91
    if-nez v3, :cond_61

    .line 93
    cmp-long v3, v13, v8

    .line 95
    if-gez v3, :cond_61

    .line 97
    goto :goto_63

    .line 98
    :cond_61
    const/4 v3, 0x0

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    :goto_63
    const/4 v3, 0x1

    .line 101
    :goto_64
    and-int/2addr v7, v3

    .line 102
    move-wide v8, v13

    .line 103
    goto :goto_7c

    .line 104
    :cond_67
    const/4 v3, 0x3

    .line 105
    if-ne v6, v3, :cond_6e

    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v6, 0x4

    .line 109
    goto/16 :goto_d7

    .line 111
    :cond_6e
    if-eq v6, v14, :cond_73

    .line 113
    const/4 v3, 0x6

    .line 114
    if-ne v6, v3, :cond_7c

    .line 116
    :cond_73
    const/4 v4, 0x0

    .line 117
    const/4 v6, 0x7

    .line 118
    goto/16 :goto_d7

    .line 120
    :cond_77
    :goto_77
    add-int/lit8 v11, v11, -0x30

    .line 122
    neg-int v3, v11

    .line 123
    int-to-long v8, v3

    .line 124
    move v6, v15

    .line 125
    :cond_7c
    :goto_7c
    const/4 v4, 0x0

    .line 126
    goto :goto_d7

    .line 127
    :cond_7e
    :goto_7e
    invoke-direct {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_b9

    .line 133
    :goto_84
    if-ne v6, v15, :cond_a7

    .line 135
    if-eqz v7, :cond_a7

    .line 137
    const-wide/high16 v3, -0x8000000000000000L

    .line 139
    cmp-long v3, v8, v3

    .line 141
    if-nez v3, :cond_90

    .line 143
    if-eqz v10, :cond_a7

    .line 145
    :cond_90
    cmp-long v1, v8, v1

    .line 147
    if-nez v1, :cond_96

    .line 149
    if-nez v10, :cond_a7

    .line 151
    :cond_96
    if-eqz v10, :cond_99

    .line 153
    goto :goto_9a

    .line 154
    :cond_99
    neg-long v8, v8

    .line 155
    :goto_9a
    iput-wide v8, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 157
    iget-object v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 159
    int-to-long v2, v5

    .line 160
    invoke-virtual {v1, v2, v3}, Lokio/a;->m(J)V

    .line 163
    const/16 v1, 0x10

    .line 165
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 167
    return v1

    .line 168
    :cond_a7
    if-eq v6, v15, :cond_b2

    .line 170
    const/4 v1, 0x4

    .line 171
    if-eq v6, v1, :cond_b2

    .line 173
    const/4 v1, 0x7

    .line 174
    if-ne v6, v1, :cond_b0

    .line 176
    goto :goto_b2

    .line 177
    :cond_b0
    const/4 v4, 0x0

    .line 178
    return v4

    .line 179
    :cond_b2
    :goto_b2
    iput v5, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 181
    const/16 v1, 0x11

    .line 183
    iput v1, v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 185
    return v1

    .line 186
    :cond_b9
    const/4 v4, 0x0

    .line 187
    return v4

    .line 188
    :cond_bb
    const/4 v3, 0x3

    .line 189
    if-ne v6, v15, :cond_bf

    .line 191
    goto :goto_d6

    .line 192
    :cond_bf
    return v4

    .line 193
    :cond_c0
    const/4 v3, 0x6

    .line 194
    if-nez v6, :cond_c6

    .line 196
    const/4 v6, 0x1

    .line 197
    const/4 v10, 0x1

    .line 198
    goto :goto_d7

    .line 199
    :cond_c6
    if-ne v6, v14, :cond_c9

    .line 201
    goto :goto_d6

    .line 202
    :cond_c9
    return v4

    .line 203
    :cond_ca
    if-eq v6, v15, :cond_d1

    .line 205
    const/4 v3, 0x4

    .line 206
    if-ne v6, v3, :cond_d0

    .line 208
    goto :goto_d1

    .line 209
    :cond_d0
    return v4

    .line 210
    :cond_d1
    :goto_d1
    move v6, v14

    .line 211
    goto :goto_d7

    .line 212
    :cond_d3
    const/4 v3, 0x6

    .line 213
    if-ne v6, v14, :cond_db

    .line 215
    :goto_d6
    move v6, v3

    .line 216
    :goto_d7
    move v5, v12

    .line 217
    const/4 v3, 0x1

    .line 218
    goto/16 :goto_b

    .line 220
    :cond_db
    return v4
.end method

.method private readEscapeCharacter()C
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Lp4/b;->request(J)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d6

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 13
    invoke-virtual {v0}, Lokio/a;->h()B

    .line 16
    move-result v0

    .line 17
    const/16 v1, 0xa

    .line 19
    if-eq v0, v1, :cond_d4

    .line 21
    const/16 v2, 0x22

    .line 23
    if-eq v0, v2, :cond_d4

    .line 25
    const/16 v2, 0x27

    .line 27
    if-eq v0, v2, :cond_d4

    .line 29
    const/16 v2, 0x2f

    .line 31
    if-eq v0, v2, :cond_d4

    .line 33
    const/16 v2, 0x5c

    .line 35
    if-eq v0, v2, :cond_d4

    .line 37
    const/16 v2, 0x62

    .line 39
    if-eq v0, v2, :cond_d1

    .line 41
    const/16 v2, 0x66

    .line 43
    if-eq v0, v2, :cond_ce

    .line 45
    const/16 v3, 0x6e

    .line 47
    if-eq v0, v3, :cond_cd

    .line 49
    const/16 v3, 0x72

    .line 51
    if-eq v0, v3, :cond_ca

    .line 53
    const/16 v3, 0x74

    .line 55
    if-eq v0, v3, :cond_c7

    .line 57
    const/16 v3, 0x75

    .line 59
    if-eq v0, v3, :cond_55

    .line 61
    iget-boolean v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 63
    if-eqz v1, :cond_42

    .line 65
    int-to-char v0, v0

    .line 66
    return v0

    .line 67
    :cond_42
    const-string v1, "Invalid escape sequence: \\"

    .line 69
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v1

    .line 73
    int-to-char v0, v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 84
    move-result-object v0

    .line 85
    throw v0

    .line 86
    :cond_55
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 88
    const-wide/16 v3, 0x4

    .line 90
    invoke-interface {v0, v3, v4}, Lp4/b;->request(J)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_b0

    .line 96
    const/4 v0, 0x0

    .line 97
    move v5, v0

    .line 98
    :goto_61
    const/4 v6, 0x4

    .line 99
    if-ge v0, v6, :cond_aa

    .line 101
    iget-object v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 103
    int-to-long v7, v0

    .line 104
    invoke-virtual {v6, v7, v8}, Lokio/a;->a(J)B

    .line 107
    move-result v6

    .line 108
    shl-int/lit8 v5, v5, 0x4

    .line 110
    int-to-char v5, v5

    .line 111
    const/16 v7, 0x30

    .line 113
    if-lt v6, v7, :cond_79

    .line 115
    const/16 v7, 0x39

    .line 117
    if-gt v6, v7, :cond_79

    .line 119
    add-int/lit8 v6, v6, -0x30

    .line 121
    goto :goto_8d

    .line 122
    :cond_79
    const/16 v7, 0x61

    .line 124
    if-lt v6, v7, :cond_82

    .line 126
    if-gt v6, v2, :cond_82

    .line 128
    add-int/lit8 v6, v6, -0x61

    .line 130
    goto :goto_8c

    .line 131
    :cond_82
    const/16 v7, 0x41

    .line 133
    if-lt v6, v7, :cond_92

    .line 135
    const/16 v7, 0x46

    .line 137
    if-gt v6, v7, :cond_92

    .line 139
    add-int/lit8 v6, v6, -0x41

    .line 141
    :goto_8c
    add-int/2addr v6, v1

    .line 142
    :goto_8d
    add-int/2addr v6, v5

    .line 143
    int-to-char v5, v6

    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 146
    goto :goto_61

    .line 147
    :cond_92
    const-string v0, "\\u"

    .line 149
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 155
    invoke-virtual {v1, v3, v4}, Lokio/a;->k(J)Ljava/lang/String;

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 169
    move-result-object v0

    .line 170
    throw v0

    .line 171
    :cond_aa
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 173
    invoke-virtual {v0, v3, v4}, Lokio/a;->m(J)V

    .line 176
    return v5

    .line 177
    :cond_b0
    new-instance v0, Ljava/io/EOFException;

    .line 179
    const-string v1, "Unterminated escape sequence at path "

    .line 181
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 199
    throw v0

    .line 200
    :cond_c7
    const/16 v0, 0x9

    .line 202
    return v0

    .line 203
    :cond_ca
    const/16 v0, 0xd

    .line 205
    return v0

    .line 206
    :cond_cd
    return v1

    .line 207
    :cond_ce
    const/16 v0, 0xc

    .line 209
    return v0

    .line 210
    :cond_d1
    const/16 v0, 0x8

    .line 212
    return v0

    .line 213
    :cond_d4
    int-to-char v0, v0

    .line 214
    return v0

    .line 215
    :cond_d6
    const-string v0, "Unterminated escape sequence"

    .line 217
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 220
    move-result-object v0

    .line 221
    throw v0
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .registers 8

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    invoke-interface {v0, p1}, Lp4/b;->d(Lokio/ByteString;)J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 9
    cmp-long v2, v0, v2

    .line 11
    if-eqz v2, :cond_29

    .line 13
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 15
    invoke-virtual {v2, v0, v1}, Lokio/a;->a(J)B

    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x5c

    .line 21
    const-wide/16 v4, 0x1

    .line 23
    if-ne v2, v3, :cond_22

    .line 25
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 27
    add-long/2addr v0, v4

    .line 28
    invoke-virtual {v2, v0, v1}, Lokio/a;->m(J)V

    .line 31
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    .line 34
    goto :goto_0

    .line 35
    :cond_22
    iget-object p1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 37
    add-long/2addr v0, v4

    .line 38
    invoke-virtual {p1, v0, v1}, Lokio/a;->m(J)V

    .line 41
    return-void

    .line 42
    :cond_29
    const-string p1, "Unterminated string"

    .line 44
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 47
    move-result-object p1

    .line 48
    throw p1
.end method

.method private skipToEndOfBlockComment()Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    .line 5
    invoke-interface {v0, v1}, Lp4/b;->b(Lokio/ByteString;)J

    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 11
    cmp-long v0, v2, v4

    .line 13
    if-eqz v0, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    iget-object v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 20
    if-eqz v0, :cond_1c

    .line 22
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 25
    move-result v1

    .line 26
    int-to-long v5, v1

    .line 27
    add-long/2addr v2, v5

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    iget-wide v2, v4, Lokio/a;->b:J

    .line 31
    :goto_1e
    invoke-virtual {v4, v2, v3}, Lokio/a;->m(J)V

    .line 34
    return v0
.end method

.method private skipToEndOfLine()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    .line 5
    invoke-interface {v0, v1}, Lp4/b;->d(Lokio/ByteString;)J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 11
    const-wide/16 v3, -0x1

    .line 13
    cmp-long v3, v0, v3

    .line 15
    if-eqz v3, :cond_14

    .line 17
    const-wide/16 v3, 0x1

    .line 19
    add-long/2addr v0, v3

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    iget-wide v0, v2, Lokio/a;->b:J

    .line 23
    :goto_16
    invoke-virtual {v2, v0, v1}, Lokio/a;->m(J)V

    .line 26
    return-void
.end method

.method private skipUnquotedValue()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 3
    sget-object v1, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    .line 5
    invoke-interface {v0, v1}, Lp4/b;->d(Lokio/ByteString;)J

    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 11
    const-wide/16 v3, -0x1

    .line 13
    cmp-long v3, v0, v3

    .line 15
    if-eqz v3, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    iget-wide v0, v2, Lokio/a;->b:J

    .line 20
    :goto_13
    invoke-virtual {v2, v0, v1}, Lokio/a;->m(J)V

    .line 23
    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_1a

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 18
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 24
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 29
    const-string v1, "Expected BEGIN_ARRAY but was "

    .line 31
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, " at path "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public beginObject()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_13

    .line 12
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 22
    const-string v1, "Expected BEGIN_OBJECT but was "

    .line 24
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " at path "

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
.end method

.method public close()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 6
    const/16 v2, 0x8

    .line 8
    aput v2, v1, v0

    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 13
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :try_start_11
    iget-wide v1, v0, Lokio/a;->b:J

    .line 20
    invoke-virtual {v0, v1, v2}, Lokio/a;->m(J)V
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_16} :catch_1c

    .line 23
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 25
    invoke-interface {v0}, Lp4/i;->close()V

    .line 28
    return-void

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    new-instance v1, Ljava/lang/AssertionError;

    .line 32
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 35
    throw v1
.end method

.method public endArray()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1f

    .line 12
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    aget v2, v1, v0

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    aput v2, v1, v0

    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 34
    const-string v1, "Expected END_ARRAY but was "

    .line 36
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, " at path "

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method

.method public endObject()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_24

    .line 12
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v2, v1, v0

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 25
    add-int/lit8 v0, v0, -0x1

    .line 27
    aget v2, v1, v0

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    aput v2, v1, v0

    .line 33
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 39
    const-string v1, "Expected END_OBJECT but was "

    .line 41
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, " at path "

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_14

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_14

    .line 15
    const/16 v1, 0x12

    .line 17
    if-eq v0, v1, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    return v0
.end method

.method public nextBoolean()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_1a

    .line 14
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 18
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 20
    sub-int/2addr v1, v3

    .line 21
    aget v2, v0, v1

    .line 23
    add-int/2addr v2, v3

    .line 24
    aput v2, v0, v1

    .line 26
    return v3

    .line 27
    :cond_1a
    const/4 v1, 0x6

    .line 28
    if-ne v0, v1, :cond_2a

    .line 30
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 34
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 36
    sub-int/2addr v1, v3

    .line 37
    aget v4, v0, v1

    .line 39
    add-int/2addr v4, v3

    .line 40
    aput v4, v0, v1

    .line 42
    return v2

    .line 43
    :cond_2a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 45
    const-string v1, "Expected a boolean but was "

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, " at path "

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
.end method

.method public nextDouble()D
    .registers 9

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0x10

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1f

    .line 14
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 18
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    aget v2, v0, v1

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    aput v2, v0, v1

    .line 28
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 30
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1f
    const/16 v1, 0x11

    .line 34
    const-string v3, "Expected a double but was "

    .line 36
    const/16 v4, 0xb

    .line 38
    const-string v5, " at path "

    .line 40
    if-ne v0, v1, :cond_35

    .line 42
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 44
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 46
    int-to-long v6, v1

    .line 47
    invoke-virtual {v0, v6, v7}, Lokio/a;->k(J)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 53
    goto :goto_5c

    .line 54
    :cond_35
    const/16 v1, 0x9

    .line 56
    if-ne v0, v1, :cond_42

    .line 58
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 60
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 66
    goto :goto_5c

    .line 67
    :cond_42
    const/16 v1, 0x8

    .line 69
    if-ne v0, v1, :cond_4f

    .line 71
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 73
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 79
    goto :goto_5c

    .line 80
    :cond_4f
    const/16 v1, 0xa

    .line 82
    if-ne v0, v1, :cond_5a

    .line 84
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    if-ne v0, v4, :cond_c5

    .line 93
    :goto_5c
    iput v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 95
    :try_start_5e
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 97
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 100
    move-result-wide v0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_64} :catch_a8

    .line 101
    iget-boolean v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->lenient:Z

    .line 103
    if-nez v3, :cond_96

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_75

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_75

    .line 117
    goto :goto_96

    .line 118
    :cond_75
    new-instance v2, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v4, "JSON forbids NaN and infinities: "

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-direct {v2, v0}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    .line 150
    throw v2

    .line 151
    :cond_96
    :goto_96
    const/4 v3, 0x0

    .line 152
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 154
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 156
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 158
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 160
    add-int/lit8 v3, v3, -0x1

    .line 162
    aget v4, v2, v3

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 166
    aput v4, v2, v3

    .line 168
    return-wide v0

    .line 169
    :catch_a8
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 171
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 197
    throw v0

    .line 198
    :cond_c5
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 200
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0
.end method

.method public nextInt()I
    .registers 9

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0x10

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, " at path "

    .line 14
    const-string v4, "Expected an int but was "

    .line 16
    if-ne v0, v1, :cond_45

    .line 18
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 20
    long-to-int v5, v0

    .line 21
    int-to-long v6, v5

    .line 22
    cmp-long v0, v0, v6

    .line 24
    if-nez v0, :cond_28

    .line 26
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 30
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 32
    add-int/lit8 v1, v1, -0x1

    .line 34
    aget v2, v0, v1

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 38
    aput v2, v0, v1

    .line 40
    return v5

    .line 41
    :cond_28
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 43
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v1

    .line 47
    iget-wide v4, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 49
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0

    .line 70
    :cond_45
    const/16 v1, 0x11

    .line 72
    const/16 v5, 0xb

    .line 74
    if-ne v0, v1, :cond_57

    .line 76
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 78
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 80
    int-to-long v6, v1

    .line 81
    invoke-virtual {v0, v6, v7}, Lokio/a;->k(J)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 87
    goto :goto_a6

    .line 88
    :cond_57
    const/16 v1, 0x9

    .line 90
    if-eq v0, v1, :cond_82

    .line 92
    const/16 v6, 0x8

    .line 94
    if-ne v0, v6, :cond_60

    .line 96
    goto :goto_82

    .line 97
    :cond_60
    if-ne v0, v5, :cond_63

    .line 99
    goto :goto_a6

    .line 100
    :cond_63
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 102
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    :cond_82
    :goto_82
    if-ne v0, v1, :cond_8b

    .line 133
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 135
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    goto :goto_91

    .line 140
    :cond_8b
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 142
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    :goto_91
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 148
    :try_start_93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    move-result v0

    .line 152
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 154
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 156
    iget v6, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 158
    add-int/lit8 v6, v6, -0x1

    .line 160
    aget v7, v1, v6

    .line 162
    add-int/lit8 v7, v7, 0x1

    .line 164
    aput v7, v1, v6
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a5} :catch_a6

    .line 166
    return v0

    .line 167
    :catch_a6
    :goto_a6
    iput v5, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 169
    :try_start_a8
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 171
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 174
    move-result-wide v0
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ae} :catch_e3

    .line 175
    double-to-int v5, v0

    .line 176
    int-to-double v6, v5

    .line 177
    cmpl-double v0, v6, v0

    .line 179
    if-nez v0, :cond_c6

    .line 181
    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 184
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 186
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 188
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 190
    add-int/lit8 v1, v1, -0x1

    .line 192
    aget v2, v0, v1

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 196
    aput v2, v0, v1

    .line 198
    return v5

    .line 199
    :cond_c6
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 201
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 227
    throw v0

    .line 228
    :catch_e3
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 230
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 256
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xe

    .line 11
    if-ne v0, v1, :cond_11

    .line 13
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_2d

    .line 18
    :cond_11
    const/16 v1, 0xd

    .line 20
    if-ne v0, v1, :cond_1c

    .line 22
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 24
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_2d

    .line 29
    :cond_1c
    const/16 v1, 0xc

    .line 31
    if-ne v0, v1, :cond_27

    .line 33
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 35
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    const/16 v1, 0xf

    .line 42
    if-ne v0, v1, :cond_39

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 46
    :goto_2d
    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 49
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 51
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 53
    add-int/lit8 v2, v2, -0x1

    .line 55
    aput-object v0, v1, v2

    .line 57
    return-object v0

    .line 58
    :cond_39
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 60
    const-string v1, "Expected a name but was "

    .line 62
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, " at path "

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 92
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xa

    .line 11
    if-ne v0, v1, :cond_11

    .line 13
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_49

    .line 18
    :cond_11
    const/16 v1, 0x9

    .line 20
    if-ne v0, v1, :cond_1c

    .line 22
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 24
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_49

    .line 29
    :cond_1c
    const/16 v1, 0x8

    .line 31
    if-ne v0, v1, :cond_27

    .line 33
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 35
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_49

    .line 40
    :cond_27
    const/16 v1, 0xb

    .line 42
    if-ne v0, v1, :cond_31

    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 49
    goto :goto_49

    .line 50
    :cond_31
    const/16 v1, 0x10

    .line 52
    if-ne v0, v1, :cond_3c

    .line 54
    iget-wide v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedLong:J

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    goto :goto_49

    .line 61
    :cond_3c
    const/16 v1, 0x11

    .line 63
    if-ne v0, v1, :cond_59

    .line 65
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 67
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 69
    int-to-long v1, v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lokio/a;->k(J)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    :goto_49
    const/4 v1, 0x0

    .line 75
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 77
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 79
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 81
    add-int/lit8 v2, v2, -0x1

    .line 83
    aget v3, v1, v2

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 87
    aput v3, v1, v2

    .line 89
    return-object v0

    .line 90
    :cond_59
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 92
    const-string v1, "Expected a string but was "

    .line 94
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, " at path "

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0
.end method

.method public peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
    .registers 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    packed-switch v0, :pswitch_data_30

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 17
    throw v0

    .line 18
    :pswitch_11  #0x12
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 20
    return-object v0

    .line 21
    :pswitch_14  #0x10, 0x11
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NUMBER:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 23
    return-object v0

    .line 24
    :pswitch_17  #0xc, 0xd, 0xe, 0xf
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NAME:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 26
    return-object v0

    .line 27
    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->STRING:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 29
    return-object v0

    .line 30
    :pswitch_1d  #0x7
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->NULL:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 32
    return-object v0

    .line 33
    :pswitch_20  #0x5, 0x6
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 35
    return-object v0

    .line 36
    :pswitch_23  #0x4
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 38
    return-object v0

    .line 39
    :pswitch_26  #0x3
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 41
    return-object v0

    .line 42
    :pswitch_29  #0x2
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 44
    return-object v0

    .line 45
    :pswitch_2c  #0x1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 47
    return-object v0

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_17  #0000000e
        :pswitch_17  #0000000f
        :pswitch_14  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
    .end packed-switch
.end method

.method public selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
    .registers 6

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xc

    .line 11
    const/4 v2, -0x1

    .line 12
    if-lt v0, v1, :cond_54

    .line 14
    const/16 v1, 0xf

    .line 16
    if-le v0, v1, :cond_12

    .line 18
    goto :goto_54

    .line 19
    :cond_12
    if-ne v0, v1, :cond_1b

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 30
    iget-object v3, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lp4/e;

    .line 32
    invoke-interface {v0, v3}, Lp4/b;->f(Lp4/e;)I

    .line 35
    move-result v0

    .line 36
    if-eq v0, v2, :cond_35

    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 41
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 43
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 47
    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    .line 49
    aget-object p1, p1, v0

    .line 51
    aput-object p1, v1, v2

    .line 53
    return v0

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 56
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 58
    add-int/lit8 v3, v3, -0x1

    .line 60
    aget-object v0, v0, v3

    .line 62
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-direct {p0, v3, p1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    .line 69
    move-result p1

    .line 70
    if-ne p1, v2, :cond_53

    .line 72
    iput v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 74
    iput-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 78
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 80
    add-int/lit8 v2, v2, -0x1

    .line 82
    aput-object v0, v1, v2

    .line 84
    :cond_53
    return p1

    .line 85
    :cond_54
    :goto_54
    return v2
.end method

.method public skipName()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    .line 3
    if-nez v0, :cond_5d

    .line 5
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 7
    if-nez v0, :cond_c

    .line 9
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 12
    move-result v0

    .line 13
    :cond_c
    const/16 v1, 0xe

    .line 15
    if-ne v0, v1, :cond_14

    .line 17
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 20
    goto :goto_2c

    .line 21
    :cond_14
    const/16 v1, 0xd

    .line 23
    if-ne v0, v1, :cond_1e

    .line 25
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 27
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 30
    goto :goto_2c

    .line 31
    :cond_1e
    const/16 v1, 0xc

    .line 33
    if-ne v0, v1, :cond_28

    .line 35
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 37
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 40
    goto :goto_2c

    .line 41
    :cond_28
    const/16 v1, 0xf

    .line 43
    if-ne v0, v1, :cond_3a

    .line 45
    :goto_2c
    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 48
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 50
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 54
    const-string v2, "null"

    .line 56
    aput-object v2, v0, v1

    .line 58
    return-void

    .line 59
    :cond_3a
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 61
    const-string v1, "Expected a name but was "

    .line 63
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, " at path "

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0

    .line 94
    :cond_5d
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 96
    const-string v1, "Cannot skip unexpected "

    .line 98
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, " at "

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method public skipValue()V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->failOnUnknown:Z

    .line 3
    if-nez v0, :cond_ef

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :cond_6
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 9
    if-nez v2, :cond_e

    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->doPeek()I

    .line 14
    move-result v2

    .line 15
    :cond_e
    const/4 v3, 0x3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v2, v3, :cond_16

    .line 19
    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    if-ne v2, v4, :cond_1f

    .line 25
    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pushScope(I)V

    .line 28
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto/16 :goto_d8

    .line 32
    :cond_1f
    const/4 v3, 0x4

    .line 33
    const-string v5, " at path "

    .line 35
    const-string v6, "Expected a value but was "

    .line 37
    if-ne v2, v3, :cond_50

    .line 39
    add-int/lit8 v1, v1, -0x1

    .line 41
    if-ltz v1, :cond_31

    .line 43
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 45
    sub-int/2addr v2, v4

    .line 46
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 48
    goto/16 :goto_d8

    .line 50
    :cond_31
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 52
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :cond_50
    const/4 v3, 0x2

    .line 82
    if-ne v2, v3, :cond_7d

    .line 84
    add-int/lit8 v1, v1, -0x1

    .line 86
    if-ltz v1, :cond_5e

    .line 88
    iget v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 90
    sub-int/2addr v2, v4

    .line 91
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 93
    goto/16 :goto_d8

    .line 95
    :cond_5e
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 97
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 125
    throw v0

    .line 126
    :cond_7d
    const/16 v3, 0xe

    .line 128
    if-eq v2, v3, :cond_d5

    .line 130
    const/16 v3, 0xa

    .line 132
    if-ne v2, v3, :cond_86

    .line 134
    goto :goto_d5

    .line 135
    :cond_86
    const/16 v3, 0x9

    .line 137
    if-eq v2, v3, :cond_cf

    .line 139
    const/16 v3, 0xd

    .line 141
    if-ne v2, v3, :cond_8f

    .line 143
    goto :goto_cf

    .line 144
    :cond_8f
    const/16 v3, 0x8

    .line 146
    if-eq v2, v3, :cond_c9

    .line 148
    const/16 v3, 0xc

    .line 150
    if-ne v2, v3, :cond_98

    .line 152
    goto :goto_c9

    .line 153
    :cond_98
    const/16 v3, 0x11

    .line 155
    if-ne v2, v3, :cond_a5

    .line 157
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->buffer:Lokio/a;

    .line 159
    iget v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 161
    int-to-long v5, v3

    .line 162
    invoke-virtual {v2, v5, v6}, Lokio/a;->m(J)V

    .line 165
    goto :goto_d8

    .line 166
    :cond_a5
    const/16 v3, 0x12

    .line 168
    if-eq v2, v3, :cond_aa

    .line 170
    goto :goto_d8

    .line 171
    :cond_aa
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 173
    invoke-static {v6}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 201
    throw v0

    .line 202
    :cond_c9
    :goto_c9
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 204
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 207
    goto :goto_d8

    .line 208
    :cond_cf
    :goto_cf
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 210
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    .line 213
    goto :goto_d8

    .line 214
    :cond_d5
    :goto_d5
    invoke-direct {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    .line 217
    :goto_d8
    iput v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peeked:I

    .line 219
    if-nez v1, :cond_6

    .line 221
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 223
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 225
    add-int/lit8 v2, v1, -0x1

    .line 227
    aget v3, v0, v2

    .line 229
    add-int/2addr v3, v4

    .line 230
    aput v3, v0, v2

    .line 232
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 234
    sub-int/2addr v1, v4

    .line 235
    const-string v2, "null"

    .line 237
    aput-object v2, v0, v1

    .line 239
    return-void

    .line 240
    :cond_ef
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 242
    const-string v1, "Cannot skip unexpected "

    .line 244
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    .line 251
    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, " at "

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object v1

    .line 271
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 274
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "JsonReader("

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->source:Lp4/b;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
