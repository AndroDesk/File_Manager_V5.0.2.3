.class public Lcom/google/gson/internal/bind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final TIMEZONE_UTC:Ljava/util/TimeZone;

.field private static final UTC_ID:Ljava/lang/String; = "UTC"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "UTC"

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_e

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result p0

    .line 11
    if-ne p0, p2, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    .line 2
    sget-object v0, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 9

    .line 3
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x4

    if-eqz p1, :cond_f

    move v1, p0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    const/16 v2, 0x13

    add-int/2addr v2, v1

    .line 5
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    move v1, v3

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x6

    :goto_1d
    add-int/2addr v2, v1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x2d

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x54

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v3, 0x3a

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0xd

    .line 17
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v1, v4, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_7c

    const/16 p1, 0x2e

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xe

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v4, 0x3

    invoke-static {v1, p1, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 20
    :cond_7c
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    if-eqz p1, :cond_a9

    const p2, 0xea60

    .line 21
    div-int p2, p1, p2

    div-int/lit8 v0, p2, 0x3c

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 22
    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gez p1, :cond_9a

    goto :goto_9c

    :cond_9a
    const/16 p0, 0x2b

    .line 23
    :goto_9c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {v1, v0, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-static {v1, p2, v2}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    goto :goto_ae

    :cond_a9
    const/16 p0, 0x5a

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :goto_ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static indexOfNonDigit(Ljava/lang/String;I)I
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_17

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x30

    .line 13
    if-lt v0, v1, :cond_16

    .line 15
    const/16 v1, 0x39

    .line 17
    if-le v0, v1, :cond_13

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    add-int/lit8 p1, p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_16
    :goto_16
    return p1

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    sub-int/2addr p2, v0

    .line 10
    :goto_9
    if-lez p2, :cond_13

    .line 12
    const/16 v0, 0x30

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    add-int/lit8 p2, p2, -0x1

    .line 19
    goto :goto_9

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 8
    move-result v0

    .line 9
    add-int/lit8 v3, v0, 0x4

    .line 11
    invoke-static {v1, v0, v3}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 15
    const/16 v4, 0x2d

    .line 17
    invoke-static {v1, v3, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_18

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 25
    :cond_18
    add-int/lit8 v5, v3, 0x2

    .line 27
    invoke-static {v1, v3, v5}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v5, v4}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_26

    .line 37
    add-int/lit8 v5, v5, 0x1

    .line 39
    :cond_26
    add-int/lit8 v6, v5, 0x2

    .line 41
    invoke-static {v1, v5, v6}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 44
    move-result v5

    .line 45
    const/16 v7, 0x54

    .line 47
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x1

    .line 52
    if-nez v7, :cond_49

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 57
    move-result v9

    .line 58
    if-gt v9, v6, :cond_49

    .line 60
    new-instance v4, Ljava/util/GregorianCalendar;

    .line 62
    sub-int/2addr v3, v8

    .line 63
    invoke-direct {v4, v0, v3, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 66
    invoke-virtual {v2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 69
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 72
    move-result-object v0

    .line 73
    return-object v0

    .line 74
    :cond_49
    const/16 v9, 0x2b

    .line 76
    const/16 v10, 0x5a

    .line 78
    const/4 v11, 0x2

    .line 79
    if-eqz v7, :cond_c1

    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 83
    add-int/lit8 v7, v6, 0x2

    .line 85
    invoke-static {v1, v6, v7}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 88
    move-result v6

    .line 89
    const/16 v12, 0x3a

    .line 91
    invoke-static {v1, v7, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 94
    move-result v13

    .line 95
    if-eqz v13, :cond_62

    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 99
    :cond_62
    add-int/lit8 v13, v7, 0x2

    .line 101
    invoke-static {v1, v7, v13}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 104
    move-result v7

    .line 105
    invoke-static {v1, v13, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 108
    move-result v12

    .line 109
    if-eqz v12, :cond_70

    .line 111
    add-int/lit8 v13, v13, 0x1

    .line 113
    :cond_70
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 116
    move-result v12

    .line 117
    if-le v12, v13, :cond_ba

    .line 119
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 122
    move-result v12

    .line 123
    if-eq v12, v10, :cond_ba

    .line 125
    if-eq v12, v9, :cond_ba

    .line 127
    if-eq v12, v4, :cond_ba

    .line 129
    add-int/lit8 v12, v13, 0x2

    .line 131
    invoke-static {v1, v13, v12}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 134
    move-result v13

    .line 135
    const/16 v14, 0x3b

    .line 137
    if-le v13, v14, :cond_90

    .line 139
    const/16 v14, 0x3f

    .line 141
    if-ge v13, v14, :cond_90

    .line 143
    const/16 v13, 0x3b

    .line 145
    :cond_90
    const/16 v14, 0x2e

    .line 147
    invoke-static {v1, v12, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_b7

    .line 153
    add-int/lit8 v12, v12, 0x1

    .line 155
    add-int/lit8 v14, v12, 0x1

    .line 157
    invoke-static {v1, v14}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->indexOfNonDigit(Ljava/lang/String;I)I

    .line 160
    move-result v14

    .line 161
    add-int/lit8 v15, v12, 0x3

    .line 163
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 166
    move-result v15

    .line 167
    invoke-static {v1, v12, v15}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    .line 170
    move-result v16

    .line 171
    sub-int/2addr v15, v12

    .line 172
    if-eq v15, v8, :cond_b3

    .line 174
    if-eq v15, v11, :cond_b0

    .line 176
    goto :goto_b5

    .line 177
    :cond_b0
    mul-int/lit8 v16, v16, 0xa

    .line 179
    goto :goto_b5

    .line 180
    :cond_b3
    mul-int/lit8 v16, v16, 0x64

    .line 182
    :goto_b5
    move v12, v14

    .line 183
    goto :goto_ca

    .line 184
    :cond_b7
    const/16 v16, 0x0

    .line 186
    goto :goto_ca

    .line 187
    :cond_ba
    const/4 v11, 0x0

    .line 188
    move/from16 v16, v11

    .line 190
    move v11, v7

    .line 191
    move v7, v6

    .line 192
    move v6, v13

    .line 193
    goto :goto_c6

    .line 194
    :cond_c1
    const/4 v7, 0x0

    .line 195
    const/4 v11, 0x0

    .line 196
    const/4 v12, 0x0

    .line 197
    move/from16 v16, v12

    .line 199
    :goto_c6
    const/4 v13, 0x0

    .line 200
    move v12, v6

    .line 201
    move v6, v7

    .line 202
    move v7, v11

    .line 203
    :goto_ca
    move/from16 v11, v16

    .line 205
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 208
    move-result v14

    .line 209
    if-le v14, v12, :cond_1b7

    .line 211
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 214
    move-result v14

    .line 215
    const/4 v15, 0x5

    .line 216
    if-ne v14, v10, :cond_de

    .line 218
    sget-object v4, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 220
    add-int/2addr v12, v8

    .line 221
    goto/16 :goto_186

    .line 223
    :cond_de
    if-eq v14, v9, :cond_ff

    .line 225
    if-ne v14, v4, :cond_e3

    .line 227
    goto :goto_ff

    .line 228
    :cond_e3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    const-string v4, "Invalid time zone indicator \'"

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    const-string v4, "\'"

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v3

    .line 252
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 255
    throw v0

    .line 256
    :cond_ff
    :goto_ff
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 263
    move-result v9

    .line 264
    if-lt v9, v15, :cond_10a

    .line 266
    goto :goto_11b

    .line 267
    :cond_10a
    new-instance v9, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v4, "00"

    .line 277
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object v4

    .line 284
    :goto_11b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 287
    move-result v9

    .line 288
    add-int/2addr v12, v9

    .line 289
    const-string v9, "+0000"

    .line 291
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v9

    .line 295
    if-nez v9, :cond_184

    .line 297
    const-string v9, "+00:00"

    .line 299
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    move-result v9

    .line 303
    if-eqz v9, :cond_131

    .line 305
    goto :goto_184

    .line 306
    :cond_131
    new-instance v9, Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    const-string v10, "GMT"

    .line 313
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v4

    .line 323
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 326
    move-result-object v9

    .line 327
    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 330
    move-result-object v10

    .line 331
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result v14

    .line 335
    if-nez v14, :cond_182

    .line 337
    const-string v14, ":"

    .line 339
    const-string v15, ""

    .line 341
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 344
    move-result-object v10

    .line 345
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    move-result v10

    .line 349
    if-eqz v10, :cond_15f

    .line 351
    goto :goto_182

    .line 352
    :cond_15f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    const-string v5, "Mismatching time zone indicator: "

    .line 361
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v4, " given, resolves to "

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 375
    move-result-object v4

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object v3

    .line 383
    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 386
    throw v0

    .line 387
    :cond_182
    :goto_182
    move-object v4, v9

    .line 388
    goto :goto_186

    .line 389
    :cond_184
    :goto_184
    sget-object v4, Lcom/google/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 391
    :goto_186
    new-instance v9, Ljava/util/GregorianCalendar;

    .line 393
    invoke-direct {v9, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 396
    const/4 v4, 0x0

    .line 397
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 400
    invoke-virtual {v9, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 403
    sub-int/2addr v3, v8

    .line 404
    const/4 v0, 0x2

    .line 405
    invoke-virtual {v9, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 408
    const/4 v0, 0x5

    .line 409
    invoke-virtual {v9, v0, v5}, Ljava/util/Calendar;->set(II)V

    .line 412
    const/16 v0, 0xb

    .line 414
    invoke-virtual {v9, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 417
    const/16 v0, 0xc

    .line 419
    invoke-virtual {v9, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v0, 0xd

    .line 424
    invoke-virtual {v9, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/16 v0, 0xe

    .line 429
    invoke-virtual {v9, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {v2, v12}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 435
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 438
    move-result-object v0

    .line 439
    return-object v0

    .line 440
    :cond_1b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 442
    const-string v3, "No time zone indicator"

    .line 444
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 447
    throw v0
    :try_end_1bf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_1bf} :catch_1c3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1bf} :catch_1c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1bf} :catch_1bf

    .line 448
    :catch_1bf
    move-exception v0

    .line 449
    goto :goto_1c4

    .line 450
    :catch_1c1
    move-exception v0

    .line 451
    goto :goto_1c4

    .line 452
    :catch_1c3
    move-exception v0

    .line 453
    :goto_1c4
    if-nez v1, :cond_1c8

    .line 455
    const/4 v1, 0x0

    .line 456
    goto :goto_1dc

    .line 457
    :cond_1c8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    const/16 v4, 0x22

    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    move-result-object v1

    .line 477
    :goto_1dc
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 480
    move-result-object v3

    .line 481
    if-eqz v3, :cond_1e8

    .line 483
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 486
    move-result v4

    .line 487
    if-eqz v4, :cond_202

    .line 489
    :cond_1e8
    const-string v3, "("

    .line 491
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 498
    move-result-object v4

    .line 499
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v4, ")"

    .line 508
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    move-result-object v3

    .line 515
    :cond_202
    new-instance v4, Ljava/text/ParseException;

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    .line 519
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    const-string v6, "Failed to parse date ["

    .line 524
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, "]: "

    .line 532
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    move-result-object v1

    .line 542
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    .line 545
    move-result v2

    .line 546
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 549
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 552
    throw v4
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 8

    .line 1
    if-ltz p1, :cond_60

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-gt p2, v0, :cond_60

    .line 9
    if-gt p1, p2, :cond_60

    .line 11
    const/4 v0, 0x0

    .line 12
    const-string v1, "Invalid number: "

    .line 14
    const/16 v2, 0xa

    .line 16
    if-ge p1, p2, :cond_34

    .line 18
    add-int/lit8 v0, p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v3

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    .line 27
    move-result v3

    .line 28
    if-ltz v3, :cond_1f

    .line 30
    neg-int v3, v3

    .line 31
    goto :goto_36

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 34
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    :cond_34
    move v3, v0

    .line 54
    move v0, p1

    .line 55
    :goto_36
    if-ge v0, p2, :cond_5e

    .line 57
    add-int/lit8 v4, v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 62
    move-result v0

    .line 63
    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    .line 66
    move-result v0

    .line 67
    if-ltz v0, :cond_49

    .line 69
    mul-int/lit8 v3, v3, 0xa

    .line 71
    sub-int/2addr v3, v0

    .line 72
    move v0, v4

    .line 73
    goto :goto_36

    .line 74
    :cond_49
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 76
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 94
    throw v0

    .line 95
    :cond_5e
    neg-int p0, v3

    .line 96
    return p0

    .line 97
    :cond_60
    new-instance p1, Ljava/lang/NumberFormatException;

    .line 99
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1
.end method
