.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
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

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field public peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/gson/stream/JsonReader$1;

    .line 3
    invoke-direct {v0}, Lcom/google/gson/stream/JsonReader$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 7
    const/16 v1, 0x400

    .line 9
    new-array v1, v1, [C

    .line 11
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 15
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 19
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 21
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 23
    const/16 v1, 0x20

    .line 25
    new-array v2, v1, [I

    .line 27
    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 29
    add-int/lit8 v3, v0, 0x1

    .line 31
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 33
    const/4 v3, 0x6

    .line 34
    aput v3, v2, v0

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 40
    new-array v0, v1, [I

    .line 42
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 44
    if-eqz p1, :cond_30

    .line 46
    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 48
    return-void

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/NullPointerException;

    .line 51
    const-string v0, "in == null"

    .line 53
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1
.end method

.method private checkLenient()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 8
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method private consumeNonExecutePrefix()V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    sub-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 10
    add-int/lit8 v0, v1, 0x5

    .line 12
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 14
    const/4 v3, 0x5

    .line 15
    if-le v0, v2, :cond_17

    .line 17
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_17

    .line 23
    return-void

    .line 24
    :cond_17
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 26
    aget-char v2, v0, v1

    .line 28
    const/16 v4, 0x29

    .line 30
    if-ne v2, v4, :cond_45

    .line 32
    add-int/lit8 v2, v1, 0x1

    .line 34
    aget-char v2, v0, v2

    .line 36
    const/16 v4, 0x5d

    .line 38
    if-ne v2, v4, :cond_45

    .line 40
    add-int/lit8 v2, v1, 0x2

    .line 42
    aget-char v2, v0, v2

    .line 44
    const/16 v4, 0x7d

    .line 46
    if-ne v2, v4, :cond_45

    .line 48
    add-int/lit8 v2, v1, 0x3

    .line 50
    aget-char v2, v0, v2

    .line 52
    const/16 v4, 0x27

    .line 54
    if-ne v2, v4, :cond_45

    .line 56
    add-int/lit8 v1, v1, 0x4

    .line 58
    aget-char v0, v0, v1

    .line 60
    const/16 v1, 0xa

    .line 62
    if-eq v0, v1, :cond_40

    .line 64
    goto :goto_45

    .line 65
    :cond_40
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 67
    add-int/2addr v0, v3

    .line 68
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method private fillBuffer(I)Z
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    sub-int/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 10
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v1, v2, :cond_15

    .line 15
    sub-int/2addr v1, v2

    .line 16
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 18
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 24
    :goto_17
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 26
    :cond_19
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 28
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 30
    array-length v4, v0

    .line 31
    sub-int/2addr v4, v2

    .line 32
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    .line 35
    move-result v1

    .line 36
    const/4 v2, -0x1

    .line 37
    if-eq v1, v2, :cond_4b

    .line 39
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 44
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 46
    const/4 v4, 0x1

    .line 47
    if-nez v1, :cond_48

    .line 49
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 51
    if-nez v1, :cond_48

    .line 53
    if-lez v2, :cond_48

    .line 55
    aget-char v5, v0, v3

    .line 57
    const v6, 0xfeff

    .line 60
    if-ne v5, v6, :cond_48

    .line 62
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 64
    add-int/2addr v5, v4

    .line 65
    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 69
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 73
    :cond_48
    if-lt v2, p1, :cond_19

    .line 75
    return v4

    .line 76
    :cond_4b
    return v3
.end method

.method private isLiteral(C)Z
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
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

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
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-ne v1, v2, :cond_30

    .line 10
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 12
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2c

    .line 18
    if-nez p1, :cond_15

    .line 20
    const/4 p1, -0x1

    .line 21
    return p1

    .line 22
    :cond_15
    new-instance p1, Ljava/io/EOFException;

    .line 24
    const-string v0, "End of input"

    .line 26
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p1

    .line 45
    :cond_2c
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 49
    :cond_30
    add-int/lit8 v4, v1, 0x1

    .line 51
    aget-char v1, v0, v1

    .line 53
    const/16 v5, 0xa

    .line 55
    if-ne v1, v5, :cond_41

    .line 57
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 59
    add-int/2addr v1, v3

    .line 60
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 62
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 64
    goto/16 :goto_b0

    .line 66
    :cond_41
    const/16 v5, 0x20

    .line 68
    if-eq v1, v5, :cond_b0

    .line 70
    const/16 v5, 0xd

    .line 72
    if-eq v1, v5, :cond_b0

    .line 74
    const/16 v5, 0x9

    .line 76
    if-ne v1, v5, :cond_4e

    .line 78
    goto :goto_b0

    .line 79
    :cond_4e
    const/16 v5, 0x2f

    .line 81
    if-ne v1, v5, :cond_9b

    .line 83
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 85
    const/4 v6, 0x2

    .line 86
    if-ne v4, v2, :cond_67

    .line 88
    add-int/lit8 v4, v4, -0x1

    .line 90
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 92
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 95
    move-result v2

    .line 96
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 98
    add-int/2addr v4, v3

    .line 99
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 101
    if-nez v2, :cond_67

    .line 103
    return v1

    .line 104
    :cond_67
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 107
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 109
    aget-char v3, v0, v2

    .line 111
    const/16 v4, 0x2a

    .line 113
    if-eq v3, v4, :cond_81

    .line 115
    if-eq v3, v5, :cond_75

    .line 117
    return v1

    .line 118
    :cond_75
    add-int/lit8 v2, v2, 0x1

    .line 120
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 122
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 125
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 127
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 129
    goto :goto_6

    .line 130
    :cond_81
    add-int/lit8 v2, v2, 0x1

    .line 132
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 134
    const-string v1, "*/"

    .line 136
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_94

    .line 142
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 144
    add-int/2addr v1, v6

    .line 145
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 147
    goto/16 :goto_6

    .line 149
    :cond_94
    const-string p1, "Unterminated comment"

    .line 151
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 154
    move-result-object p1

    .line 155
    throw p1

    .line 156
    :cond_9b
    const/16 v2, 0x23

    .line 158
    if-ne v1, v2, :cond_ad

    .line 160
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 162
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 165
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    .line 168
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 170
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 172
    goto/16 :goto_6

    .line 174
    :cond_ad
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 176
    return v1

    .line 177
    :cond_b0
    :goto_b0
    move v1, v4

    .line 178
    goto/16 :goto_6
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    :goto_7
    move v4, v3

    .line 9
    move v3, v2

    .line 10
    :goto_9
    const/16 v5, 0x10

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v2, v4, :cond_5c

    .line 15
    add-int/lit8 v7, v2, 0x1

    .line 17
    aget-char v2, v0, v2

    .line 19
    if-ne v2, p1, :cond_28

    .line 21
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 23
    sub-int/2addr v7, v3

    .line 24
    sub-int/2addr v7, v6

    .line 25
    if-nez v1, :cond_20

    .line 27
    new-instance p1, Ljava/lang/String;

    .line 29
    invoke-direct {p1, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    .line 32
    return-object p1

    .line 33
    :cond_20
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_28
    const/16 v8, 0x5c

    .line 43
    if-ne v2, v8, :cond_4f

    .line 45
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 47
    sub-int/2addr v7, v3

    .line 48
    sub-int/2addr v7, v6

    .line 49
    if-nez v1, :cond_40

    .line 51
    add-int/lit8 v1, v7, 0x1

    .line 53
    mul-int/lit8 v1, v1, 0x2

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v1

    .line 61
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    move-object v1, v2

    .line 65
    :cond_40
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 77
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 79
    goto :goto_7

    .line 80
    :cond_4f
    const/16 v5, 0xa

    .line 82
    if-ne v2, v5, :cond_5a

    .line 84
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 86
    add-int/2addr v2, v6

    .line 87
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 89
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 91
    :cond_5a
    move v2, v7

    .line 92
    goto :goto_9

    .line 93
    :cond_5c
    if-nez v1, :cond_6c

    .line 95
    sub-int v1, v2, v3

    .line 97
    mul-int/lit8 v1, v1, 0x2

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    .line 104
    move-result v1

    .line 105
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    move-object v1, v4

    .line 109
    :cond_6c
    sub-int v4, v2, v3

    .line 111
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 114
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 116
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7a

    .line 122
    goto :goto_3

    .line 123
    :cond_7a
    const-string p1, "Unterminated string"

    .line 125
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 128
    move-result-object p1

    .line 129
    throw p1
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_2
    move v2, v0

    .line 4
    :goto_3
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 6
    add-int v4, v3, v2

    .line 8
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 10
    if-ge v4, v5, :cond_4e

    .line 12
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 14
    add-int/2addr v3, v2

    .line 15
    aget-char v3, v4, v3

    .line 17
    const/16 v4, 0x9

    .line 19
    if-eq v3, v4, :cond_5c

    .line 21
    const/16 v4, 0xa

    .line 23
    if-eq v3, v4, :cond_5c

    .line 25
    const/16 v4, 0xc

    .line 27
    if-eq v3, v4, :cond_5c

    .line 29
    const/16 v4, 0xd

    .line 31
    if-eq v3, v4, :cond_5c

    .line 33
    const/16 v4, 0x20

    .line 35
    if-eq v3, v4, :cond_5c

    .line 37
    const/16 v4, 0x23

    .line 39
    if-eq v3, v4, :cond_4a

    .line 41
    const/16 v4, 0x2c

    .line 43
    if-eq v3, v4, :cond_5c

    .line 45
    const/16 v4, 0x2f

    .line 47
    if-eq v3, v4, :cond_4a

    .line 49
    const/16 v4, 0x3d

    .line 51
    if-eq v3, v4, :cond_4a

    .line 53
    const/16 v4, 0x7b

    .line 55
    if-eq v3, v4, :cond_5c

    .line 57
    const/16 v4, 0x7d

    .line 59
    if-eq v3, v4, :cond_5c

    .line 61
    const/16 v4, 0x3a

    .line 63
    if-eq v3, v4, :cond_5c

    .line 65
    const/16 v4, 0x3b

    .line 67
    if-eq v3, v4, :cond_4a

    .line 69
    packed-switch v3, :pswitch_data_9c

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_3

    .line 75
    :cond_4a
    :pswitch_4a  #0x5c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 78
    goto :goto_5c

    .line 79
    :cond_4e
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 81
    array-length v3, v3

    .line 82
    if-ge v2, v3, :cond_5e

    .line 84
    add-int/lit8 v3, v2, 0x1

    .line 86
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5c

    .line 92
    goto :goto_3

    .line 93
    :cond_5c
    :goto_5c
    :pswitch_5c  #0x5b, 0x5d
    move v0, v2

    .line 94
    goto :goto_7e

    .line 95
    :cond_5e
    if-nez v1, :cond_6b

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    const/16 v3, 0x10

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 104
    move-result v3

    .line 105
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    :cond_6b
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 110
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 112
    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 115
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 117
    add-int/2addr v3, v2

    .line 118
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 120
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_2

    .line 127
    :goto_7e
    if-nez v1, :cond_8a

    .line 129
    new-instance v1, Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 133
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 135
    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 138
    goto :goto_95

    .line 139
    :cond_8a
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 141
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 143
    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    :goto_95
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 152
    add-int/2addr v2, v0

    .line 153
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 155
    return-object v1

    .line 156
    nop

    .line 157
    :pswitch_data_9c
    .packed-switch 0x5b
        :pswitch_5c  #0000005b
        :pswitch_4a  #0000005c
        :pswitch_5c  #0000005d
    .end packed-switch
.end method

.method private peekKeyword()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    aget-char v0, v0, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x74

    .line 10
    if-eq v0, v2, :cond_2f

    .line 12
    const/16 v2, 0x54

    .line 14
    if-ne v0, v2, :cond_10

    .line 16
    goto :goto_2f

    .line 17
    :cond_10
    const/16 v2, 0x66

    .line 19
    if-eq v0, v2, :cond_29

    .line 21
    const/16 v2, 0x46

    .line 23
    if-ne v0, v2, :cond_19

    .line 25
    goto :goto_29

    .line 26
    :cond_19
    const/16 v2, 0x6e

    .line 28
    if-eq v0, v2, :cond_23

    .line 30
    const/16 v2, 0x4e

    .line 32
    if-ne v0, v2, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    return v1

    .line 36
    :cond_23
    :goto_23
    const/4 v0, 0x7

    .line 37
    const-string v2, "null"

    .line 39
    const-string v3, "NULL"

    .line 41
    goto :goto_34

    .line 42
    :cond_29
    :goto_29
    const/4 v0, 0x6

    .line 43
    const-string v2, "false"

    .line 45
    const-string v3, "FALSE"

    .line 47
    goto :goto_34

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x5

    .line 49
    const-string v2, "true"

    .line 51
    const-string v3, "TRUE"

    .line 53
    :goto_34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x1

    .line 58
    :goto_39
    if-ge v5, v4, :cond_62

    .line 60
    iget v6, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 62
    add-int/2addr v6, v5

    .line 63
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 65
    if-lt v6, v7, :cond_4b

    .line 67
    add-int/lit8 v6, v5, 0x1

    .line 69
    invoke-direct {p0, v6}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4b

    .line 75
    return v1

    .line 76
    :cond_4b
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 78
    iget v7, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 80
    add-int/2addr v7, v5

    .line 81
    aget-char v6, v6, v7

    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 86
    move-result v7

    .line 87
    if-eq v6, v7, :cond_5f

    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 92
    move-result v7

    .line 93
    if-eq v6, v7, :cond_5f

    .line 95
    return v1

    .line 96
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_39

    .line 99
    :cond_62
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 101
    add-int/2addr v2, v4

    .line 102
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 104
    if-lt v2, v3, :cond_71

    .line 106
    add-int/lit8 v2, v4, 0x1

    .line 108
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_7f

    .line 114
    :cond_71
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 116
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 118
    add-int/2addr v3, v4

    .line 119
    aget-char v2, v2, v3

    .line 121
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_7f

    .line 127
    return v1

    .line 128
    :cond_7f
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 130
    add-int/2addr v1, v4

    .line 131
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 133
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 135
    return v0
.end method

.method private peekNumber()I
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 5
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 9
    const/4 v6, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    move v10, v6

    .line 12
    move v8, v7

    .line 13
    move v9, v8

    .line 14
    move v13, v9

    .line 15
    const-wide/16 v11, 0x0

    .line 17
    :goto_10
    add-int v14, v2, v8

    .line 19
    const/4 v15, 0x2

    .line 20
    if-ne v14, v3, :cond_27

    .line 22
    array-length v2, v1

    .line 23
    if-ne v8, v2, :cond_19

    .line 25
    return v7

    .line 26
    :cond_19
    add-int/lit8 v2, v8, 0x1

    .line 28
    invoke-direct {v0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_23

    .line 34
    goto/16 :goto_93

    .line 36
    :cond_23
    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 38
    iget v3, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 40
    :cond_27
    add-int v14, v2, v8

    .line 42
    aget-char v14, v1, v14

    .line 44
    const/16 v7, 0x2b

    .line 46
    const/4 v4, 0x3

    .line 47
    const/4 v5, 0x5

    .line 48
    if-eq v14, v7, :cond_eb

    .line 50
    const/16 v7, 0x45

    .line 52
    if-eq v14, v7, :cond_df

    .line 54
    const/16 v7, 0x65

    .line 56
    if-eq v14, v7, :cond_df

    .line 58
    const/16 v7, 0x2d

    .line 60
    if-eq v14, v7, :cond_d2

    .line 62
    const/16 v7, 0x2e

    .line 64
    if-eq v14, v7, :cond_cb

    .line 66
    const/16 v7, 0x30

    .line 68
    if-lt v14, v7, :cond_8d

    .line 70
    const/16 v7, 0x39

    .line 72
    if-le v14, v7, :cond_4a

    .line 74
    goto :goto_8d

    .line 75
    :cond_4a
    if-eq v9, v6, :cond_83

    .line 77
    if-nez v9, :cond_4f

    .line 79
    goto :goto_83

    .line 80
    :cond_4f
    if-ne v9, v15, :cond_76

    .line 82
    const-wide/16 v16, 0x0

    .line 84
    cmp-long v4, v11, v16

    .line 86
    if-nez v4, :cond_59

    .line 88
    const/4 v4, 0x0

    .line 89
    return v4

    .line 90
    :cond_59
    const-wide/16 v4, 0xa

    .line 92
    mul-long/2addr v4, v11

    .line 93
    add-int/lit8 v14, v14, -0x30

    .line 95
    int-to-long v14, v14

    .line 96
    sub-long/2addr v4, v14

    .line 97
    const-wide v14, -0xcccccccccccccccL

    .line 102
    cmp-long v7, v11, v14

    .line 104
    if-gtz v7, :cond_72

    .line 106
    if-nez v7, :cond_70

    .line 108
    cmp-long v7, v4, v11

    .line 110
    if-gez v7, :cond_70

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    const/4 v7, 0x0

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    :goto_72
    move v7, v6

    .line 116
    :goto_73
    and-int/2addr v10, v7

    .line 117
    move-wide v11, v4

    .line 118
    goto :goto_88

    .line 119
    :cond_76
    if-ne v9, v4, :cond_7b

    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v9, 0x4

    .line 123
    goto :goto_89

    .line 124
    :cond_7b
    if-eq v9, v5, :cond_80

    .line 126
    const/4 v4, 0x6

    .line 127
    if-ne v9, v4, :cond_88

    .line 129
    :cond_80
    const/4 v7, 0x0

    .line 130
    const/4 v9, 0x7

    .line 131
    goto :goto_89

    .line 132
    :cond_83
    :goto_83
    add-int/lit8 v14, v14, -0x30

    .line 134
    neg-int v4, v14

    .line 135
    int-to-long v11, v4

    .line 136
    move v9, v15

    .line 137
    :cond_88
    :goto_88
    const/4 v7, 0x0

    .line 138
    :goto_89
    const-wide/16 v16, 0x0

    .line 140
    goto/16 :goto_f2

    .line 142
    :cond_8d
    :goto_8d
    invoke-direct {v0, v14}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_c9

    .line 148
    :goto_93
    if-ne v9, v15, :cond_b7

    .line 150
    if-eqz v10, :cond_b7

    .line 152
    const-wide/high16 v1, -0x8000000000000000L

    .line 154
    cmp-long v1, v11, v1

    .line 156
    if-nez v1, :cond_9f

    .line 158
    if-eqz v13, :cond_b7

    .line 160
    :cond_9f
    const-wide/16 v16, 0x0

    .line 162
    cmp-long v1, v11, v16

    .line 164
    if-nez v1, :cond_a7

    .line 166
    if-nez v13, :cond_b7

    .line 168
    :cond_a7
    if-eqz v13, :cond_aa

    .line 170
    goto :goto_ab

    .line 171
    :cond_aa
    neg-long v11, v11

    .line 172
    :goto_ab
    iput-wide v11, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 174
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 176
    add-int/2addr v1, v8

    .line 177
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 179
    const/16 v1, 0xf

    .line 181
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 183
    return v1

    .line 184
    :cond_b7
    if-eq v9, v15, :cond_c2

    .line 186
    const/4 v1, 0x4

    .line 187
    if-eq v9, v1, :cond_c2

    .line 189
    const/4 v1, 0x7

    .line 190
    if-ne v9, v1, :cond_c0

    .line 192
    goto :goto_c2

    .line 193
    :cond_c0
    const/4 v7, 0x0

    .line 194
    return v7

    .line 195
    :cond_c2
    :goto_c2
    iput v8, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 197
    const/16 v1, 0x10

    .line 199
    iput v1, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 201
    return v1

    .line 202
    :cond_c9
    const/4 v7, 0x0

    .line 203
    return v7

    .line 204
    :cond_cb
    const/4 v7, 0x0

    .line 205
    const-wide/16 v16, 0x0

    .line 207
    if-ne v9, v15, :cond_d1

    .line 209
    goto :goto_f1

    .line 210
    :cond_d1
    return v7

    .line 211
    :cond_d2
    const/4 v4, 0x6

    .line 212
    const/4 v7, 0x0

    .line 213
    const-wide/16 v16, 0x0

    .line 215
    if-nez v9, :cond_db

    .line 217
    move v9, v6

    .line 218
    move v13, v9

    .line 219
    goto :goto_f2

    .line 220
    :cond_db
    if-ne v9, v5, :cond_de

    .line 222
    goto :goto_f1

    .line 223
    :cond_de
    return v7

    .line 224
    :cond_df
    const/4 v7, 0x0

    .line 225
    const-wide/16 v16, 0x0

    .line 227
    if-eq v9, v15, :cond_e9

    .line 229
    const/4 v4, 0x4

    .line 230
    if-ne v9, v4, :cond_e8

    .line 232
    goto :goto_e9

    .line 233
    :cond_e8
    return v7

    .line 234
    :cond_e9
    :goto_e9
    move v9, v5

    .line 235
    goto :goto_f2

    .line 236
    :cond_eb
    const/4 v4, 0x6

    .line 237
    const/4 v7, 0x0

    .line 238
    const-wide/16 v16, 0x0

    .line 240
    if-ne v9, v5, :cond_f6

    .line 242
    :goto_f1
    move v9, v4

    .line 243
    :goto_f2
    add-int/lit8 v8, v8, 0x1

    .line 245
    goto/16 :goto_10

    .line 247
    :cond_f6
    return v7
.end method

.method private push(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_21

    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 16
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 24
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 26
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 36
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 40
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 42
    aput p1, v0, v1

    .line 44
    return-void
.end method

.method private readEscapeCharacter()C
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 5
    const-string v2, "Unterminated escape sequence"

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ne v0, v1, :cond_15

    .line 10
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_10

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 20
    move-result-object v0

    .line 21
    throw v0

    .line 22
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 24
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 26
    add-int/lit8 v4, v1, 0x1

    .line 28
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 30
    aget-char v0, v0, v1

    .line 32
    const/16 v1, 0xa

    .line 34
    if-eq v0, v1, :cond_c5

    .line 36
    const/16 v3, 0x22

    .line 38
    if-eq v0, v3, :cond_cc

    .line 40
    const/16 v3, 0x27

    .line 42
    if-eq v0, v3, :cond_cc

    .line 44
    const/16 v3, 0x2f

    .line 46
    if-eq v0, v3, :cond_cc

    .line 48
    const/16 v3, 0x5c

    .line 50
    if-eq v0, v3, :cond_cc

    .line 52
    const/16 v3, 0x62

    .line 54
    if-eq v0, v3, :cond_c2

    .line 56
    const/16 v3, 0x66

    .line 58
    if-eq v0, v3, :cond_bf

    .line 60
    const/16 v5, 0x6e

    .line 62
    if-eq v0, v5, :cond_be

    .line 64
    const/16 v5, 0x72

    .line 66
    if-eq v0, v5, :cond_bb

    .line 68
    const/16 v5, 0x74

    .line 70
    if-eq v0, v5, :cond_b8

    .line 72
    const/16 v5, 0x75

    .line 74
    if-ne v0, v5, :cond_b1

    .line 76
    const/4 v0, 0x4

    .line 77
    add-int/2addr v4, v0

    .line 78
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 80
    if-le v4, v5, :cond_5d

    .line 82
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_58

    .line 88
    goto :goto_5d

    .line 89
    :cond_58
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 92
    move-result-object v0

    .line 93
    throw v0

    .line 94
    :cond_5d
    :goto_5d
    const/4 v2, 0x0

    .line 95
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 97
    add-int/lit8 v5, v4, 0x4

    .line 99
    :goto_62
    if-ge v4, v5, :cond_ab

    .line 101
    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 103
    aget-char v6, v6, v4

    .line 105
    shl-int/lit8 v2, v2, 0x4

    .line 107
    int-to-char v2, v2

    .line 108
    const/16 v7, 0x30

    .line 110
    if-lt v6, v7, :cond_76

    .line 112
    const/16 v7, 0x39

    .line 114
    if-gt v6, v7, :cond_76

    .line 116
    add-int/lit8 v6, v6, -0x30

    .line 118
    goto :goto_8a

    .line 119
    :cond_76
    const/16 v7, 0x61

    .line 121
    if-lt v6, v7, :cond_7f

    .line 123
    if-gt v6, v3, :cond_7f

    .line 125
    add-int/lit8 v6, v6, -0x61

    .line 127
    goto :goto_89

    .line 128
    :cond_7f
    const/16 v7, 0x41

    .line 130
    if-lt v6, v7, :cond_8f

    .line 132
    const/16 v7, 0x46

    .line 134
    if-gt v6, v7, :cond_8f

    .line 136
    add-int/lit8 v6, v6, -0x41

    .line 138
    :goto_89
    add-int/2addr v6, v1

    .line 139
    :goto_8a
    add-int/2addr v6, v2

    .line 140
    int-to-char v2, v6

    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 143
    goto :goto_62

    .line 144
    :cond_8f
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 146
    const-string v2, "\\u"

    .line 148
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    move-result-object v2

    .line 152
    new-instance v3, Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 156
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 158
    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>([CII)V

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 171
    throw v1

    .line 172
    :cond_ab
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 174
    add-int/2addr v1, v0

    .line 175
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 177
    return v2

    .line 178
    :cond_b1
    const-string v0, "Invalid escape sequence"

    .line 180
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 183
    move-result-object v0

    .line 184
    throw v0

    .line 185
    :cond_b8
    const/16 v0, 0x9

    .line 187
    return v0

    .line 188
    :cond_bb
    const/16 v0, 0xd

    .line 190
    return v0

    .line 191
    :cond_be
    return v1

    .line 192
    :cond_bf
    const/16 v0, 0xc

    .line 194
    return v0

    .line 195
    :cond_c2
    const/16 v0, 0x8

    .line 197
    return v0

    .line 198
    :cond_c5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 200
    add-int/2addr v1, v3

    .line 201
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 203
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 205
    :cond_cc
    return v0
.end method

.method private skipQuotedValue(C)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 3
    :goto_2
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 5
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-ge v1, v2, :cond_2d

    .line 10
    add-int/lit8 v4, v1, 0x1

    .line 12
    aget-char v1, v0, v1

    .line 14
    if-ne v1, p1, :cond_12

    .line 16
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 18
    return-void

    .line 19
    :cond_12
    const/16 v5, 0x5c

    .line 21
    if-ne v1, v5, :cond_20

    .line 23
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    .line 28
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 30
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 32
    goto :goto_6

    .line 33
    :cond_20
    const/16 v5, 0xa

    .line 35
    if-ne v1, v5, :cond_2b

    .line 37
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 39
    add-int/2addr v1, v3

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 42
    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 44
    :cond_2b
    move v1, v4

    .line 45
    goto :goto_6

    .line 46
    :cond_2d
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 48
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_36

    .line 54
    goto :goto_2

    .line 55
    :cond_36
    const-string p1, "Unterminated string"

    .line 57
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 60
    move-result-object p1

    .line 61
    throw p1
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    :goto_4
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    add-int/2addr v1, v0

    .line 8
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 10
    const/4 v3, 0x0

    .line 11
    if-le v1, v2, :cond_14

    .line 13
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_13

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    return v3

    .line 21
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 23
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 25
    aget-char v1, v1, v2

    .line 27
    const/16 v4, 0xa

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v1, v4, :cond_29

    .line 32
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 34
    add-int/2addr v1, v5

    .line 35
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 41
    goto :goto_38

    .line 42
    :cond_29
    :goto_29
    if-ge v3, v0, :cond_41

    .line 44
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 46
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 48
    add-int/2addr v2, v3

    .line 49
    aget-char v1, v1, v2

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 54
    move-result v2

    .line 55
    if-eq v1, v2, :cond_3e

    .line 57
    :goto_38
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 59
    add-int/2addr v1, v5

    .line 60
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 62
    goto :goto_4

    .line 63
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_29

    .line 66
    :cond_41
    return v5
.end method

.method private skipToEndOfLine()V
    .registers 5

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 5
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_d

    .line 8
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_27

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 16
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 18
    add-int/lit8 v3, v1, 0x1

    .line 20
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 22
    aget-char v0, v0, v1

    .line 24
    const/16 v1, 0xa

    .line 26
    if-ne v0, v1, :cond_23

    .line 28
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 33
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 35
    goto :goto_27

    .line 36
    :cond_23
    const/16 v1, 0xd

    .line 38
    if-ne v0, v1, :cond_0

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private skipUnquotedValue()V
    .registers 5

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 4
    add-int v2, v1, v0

    .line 6
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 8
    if-ge v2, v3, :cond_51

    .line 10
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 12
    add-int/2addr v1, v0

    .line 13
    aget-char v1, v2, v1

    .line 15
    const/16 v2, 0x9

    .line 17
    if-eq v1, v2, :cond_4b

    .line 19
    const/16 v2, 0xa

    .line 21
    if-eq v1, v2, :cond_4b

    .line 23
    const/16 v2, 0xc

    .line 25
    if-eq v1, v2, :cond_4b

    .line 27
    const/16 v2, 0xd

    .line 29
    if-eq v1, v2, :cond_4b

    .line 31
    const/16 v2, 0x20

    .line 33
    if-eq v1, v2, :cond_4b

    .line 35
    const/16 v2, 0x23

    .line 37
    if-eq v1, v2, :cond_48

    .line 39
    const/16 v2, 0x2c

    .line 41
    if-eq v1, v2, :cond_4b

    .line 43
    const/16 v2, 0x2f

    .line 45
    if-eq v1, v2, :cond_48

    .line 47
    const/16 v2, 0x3d

    .line 49
    if-eq v1, v2, :cond_48

    .line 51
    const/16 v2, 0x7b

    .line 53
    if-eq v1, v2, :cond_4b

    .line 55
    const/16 v2, 0x7d

    .line 57
    if-eq v1, v2, :cond_4b

    .line 59
    const/16 v2, 0x3a

    .line 61
    if-eq v1, v2, :cond_4b

    .line 63
    const/16 v2, 0x3b

    .line 65
    if-eq v1, v2, :cond_48

    .line 67
    packed-switch v1, :pswitch_data_5c

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_48
    :pswitch_48  #0x5c
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 76
    :cond_4b
    :pswitch_4b  #0x5b, 0x5d
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 78
    add-int/2addr v1, v0

    .line 79
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 81
    return-void

    .line 82
    :cond_51
    add-int/2addr v1, v0

    .line 83
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_0

    .line 92
    return-void

    .line 93
    :pswitch_data_5c
    .packed-switch 0x5b
        :pswitch_4b  #0000005b
        :pswitch_48  #0000005c
        :pswitch_4b  #0000005d
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    .line 3
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 21
    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

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
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 16
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 18
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 20
    sub-int/2addr v2, v0

    .line 21
    const/4 v0, 0x0

    .line 22
    aput v0, v1, v2

    .line 24
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    const-string v1, "Expected BEGIN_ARRAY but was "

    .line 31
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0
.end method

.method public beginObject()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

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
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v1, "Expected BEGIN_OBJECT but was "

    .line 24
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0
.end method

.method public close()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 4
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 6
    const/16 v2, 0x8

    .line 8
    aput v2, v1, v0

    .line 10
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 15
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 18
    return-void
.end method

.method public doPeek()I
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 5
    add-int/lit8 v2, v1, -0x1

    .line 7
    aget v2, v0, v2

    .line 9
    const/16 v3, 0x8

    .line 11
    const/16 v4, 0x27

    .line 13
    const/16 v5, 0x22

    .line 15
    const/16 v6, 0x5d

    .line 17
    const/4 v7, 0x3

    .line 18
    const/4 v8, 0x7

    .line 19
    const/16 v9, 0x3b

    .line 21
    const/16 v10, 0x2c

    .line 23
    const/4 v11, 0x4

    .line 24
    const/4 v12, 0x2

    .line 25
    const/4 v13, 0x1

    .line 26
    if-ne v2, v13, :cond_20

    .line 28
    sub-int/2addr v1, v13

    .line 29
    aput v12, v0, v1

    .line 31
    goto/16 :goto_a2

    .line 33
    :cond_20
    if-ne v2, v12, :cond_3a

    .line 35
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 38
    move-result v0

    .line 39
    if-eq v0, v10, :cond_a2

    .line 41
    if-eq v0, v9, :cond_36

    .line 43
    if-ne v0, v6, :cond_2f

    .line 45
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 47
    return v11

    .line 48
    :cond_2f
    const-string v0, "Unterminated array"

    .line 50
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 53
    move-result-object v0

    .line 54
    throw v0

    .line 55
    :cond_36
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 58
    goto :goto_a2

    .line 59
    :cond_3a
    const/4 v14, 0x5

    .line 60
    if-eq v2, v7, :cond_11b

    .line 62
    if-ne v2, v14, :cond_41

    .line 64
    goto/16 :goto_11b

    .line 66
    :cond_41
    if-ne v2, v11, :cond_76

    .line 68
    sub-int/2addr v1, v13

    .line 69
    aput v14, v0, v1

    .line 71
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 74
    move-result v0

    .line 75
    const/16 v1, 0x3a

    .line 77
    if-eq v0, v1, :cond_a2

    .line 79
    const/16 v1, 0x3d

    .line 81
    if-ne v0, v1, :cond_6f

    .line 83
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 86
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 88
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    .line 90
    if-lt v0, v1, :cond_61

    .line 92
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_a2

    .line 98
    :cond_61
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 100
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 102
    aget-char v0, v0, v1

    .line 104
    const/16 v14, 0x3e

    .line 106
    if-ne v0, v14, :cond_a2

    .line 108
    add-int/2addr v1, v13

    .line 109
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 111
    goto :goto_a2

    .line 112
    :cond_6f
    const-string v0, "Expected \':\'"

    .line 114
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 117
    move-result-object v0

    .line 118
    throw v0

    .line 119
    :cond_76
    const/4 v0, 0x6

    .line 120
    if-ne v2, v0, :cond_88

    .line 122
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 124
    if-eqz v0, :cond_80

    .line 126
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    .line 129
    :cond_80
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 131
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 133
    sub-int/2addr v1, v13

    .line 134
    aput v8, v0, v1

    .line 136
    goto :goto_a2

    .line 137
    :cond_88
    if-ne v2, v8, :cond_a0

    .line 139
    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 143
    move-result v0

    .line 144
    const/4 v1, -0x1

    .line 145
    if-ne v0, v1, :cond_97

    .line 147
    const/16 v0, 0x11

    .line 149
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 151
    return v0

    .line 152
    :cond_97
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 155
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 157
    sub-int/2addr v0, v13

    .line 158
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 160
    goto :goto_a2

    .line 161
    :cond_a0
    if-eq v2, v3, :cond_113

    .line 163
    :cond_a2
    :goto_a2
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 166
    move-result v0

    .line 167
    if-eq v0, v5, :cond_10e

    .line 169
    if-eq v0, v4, :cond_108

    .line 171
    if-eq v0, v10, :cond_f1

    .line 173
    if-eq v0, v9, :cond_f1

    .line 175
    const/16 v1, 0x5b

    .line 177
    if-eq v0, v1, :cond_ee

    .line 179
    if-eq v0, v6, :cond_e9

    .line 181
    const/16 v1, 0x7b

    .line 183
    if-eq v0, v1, :cond_e6

    .line 185
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 187
    sub-int/2addr v0, v13

    .line 188
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 190
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekKeyword()I

    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_c4

    .line 196
    return v0

    .line 197
    :cond_c4
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->peekNumber()I

    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_cb

    .line 203
    return v0

    .line 204
    :cond_cb
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 206
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 208
    aget-char v0, v0, v1

    .line 210
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_df

    .line 216
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 219
    const/16 v0, 0xa

    .line 221
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 223
    return v0

    .line 224
    :cond_df
    const-string v0, "Expected value"

    .line 226
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 229
    move-result-object v0

    .line 230
    throw v0

    .line 231
    :cond_e6
    iput v13, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 233
    return v13

    .line 234
    :cond_e9
    if-ne v2, v13, :cond_f1

    .line 236
    iput v11, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 238
    return v11

    .line 239
    :cond_ee
    iput v7, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 241
    return v7

    .line 242
    :cond_f1
    if-eq v2, v13, :cond_fd

    .line 244
    if-ne v2, v12, :cond_f6

    .line 246
    goto :goto_fd

    .line 247
    :cond_f6
    const-string v0, "Unexpected value"

    .line 249
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 252
    move-result-object v0

    .line 253
    throw v0

    .line 254
    :cond_fd
    :goto_fd
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 257
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 259
    sub-int/2addr v0, v13

    .line 260
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 262
    iput v8, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 264
    return v8

    .line 265
    :cond_108
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 268
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 270
    return v3

    .line 271
    :cond_10e
    const/16 v0, 0x9

    .line 273
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 275
    return v0

    .line 276
    :cond_113
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 278
    const-string v1, "JsonReader is closed"

    .line 280
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 283
    throw v0

    .line 284
    :cond_11b
    :goto_11b
    sub-int/2addr v1, v13

    .line 285
    aput v11, v0, v1

    .line 287
    const/16 v0, 0x7d

    .line 289
    if-ne v2, v14, :cond_139

    .line 291
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 294
    move-result v1

    .line 295
    if-eq v1, v10, :cond_139

    .line 297
    if-eq v1, v9, :cond_136

    .line 299
    if-ne v1, v0, :cond_12f

    .line 301
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 303
    return v12

    .line 304
    :cond_12f
    const-string v0, "Unterminated object"

    .line 306
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 309
    move-result-object v0

    .line 310
    throw v0

    .line 311
    :cond_136
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 314
    :cond_139
    invoke-direct {p0, v13}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    .line 317
    move-result v1

    .line 318
    if-eq v1, v5, :cond_170

    .line 320
    if-eq v1, v4, :cond_168

    .line 322
    const-string v3, "Expected name"

    .line 324
    if-eq v1, v0, :cond_15e

    .line 326
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 329
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 331
    sub-int/2addr v0, v13

    .line 332
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 334
    int-to-char v0, v1

    .line 335
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_159

    .line 341
    const/16 v0, 0xe

    .line 343
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 345
    return v0

    .line 346
    :cond_159
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 349
    move-result-object v0

    .line 350
    throw v0

    .line 351
    :cond_15e
    if-eq v2, v14, :cond_163

    .line 353
    iput v12, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 355
    return v12

    .line 356
    :cond_163
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    .line 359
    move-result-object v0

    .line 360
    throw v0

    .line 361
    :cond_168
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    .line 364
    const/16 v0, 0xc

    .line 366
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 368
    return v0

    .line 369
    :cond_170
    const/16 v0, 0xd

    .line 371
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 373
    return v0
.end method

.method public endArray()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_1f

    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 18
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

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
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    const-string v1, "Expected END_ARRAY but was "

    .line 36
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public endObject()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_24

    .line 12
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 18
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v2, v1, v0

    .line 23
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

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
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 36
    return-void

    .line 37
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v1, "Expected END_OBJECT but was "

    .line 41
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x24

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_46

    .line 16
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    .line 18
    aget v3, v3, v2

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v3, v4, :cond_32

    .line 23
    const/4 v4, 0x2

    .line 24
    if-eq v3, v4, :cond_32

    .line 26
    const/4 v4, 0x3

    .line 27
    if-eq v3, v4, :cond_23

    .line 29
    const/4 v4, 0x4

    .line 30
    if-eq v3, v4, :cond_23

    .line 32
    const/4 v4, 0x5

    .line 33
    if-eq v3, v4, :cond_23

    .line 35
    goto :goto_43

    .line 36
    :cond_23
    const/16 v3, 0x2e

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 43
    aget-object v3, v3, v2

    .line 45
    if-eqz v3, :cond_43

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_43

    .line 51
    :cond_32
    const/16 v3, 0x5b

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 58
    aget v3, v3, v2

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const/16 v3, 0x5d

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_d

    .line 71
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_10

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_10

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 v0, 0x0

    .line 18
    :goto_11
    return v0
.end method

.method public final isLenient()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 3
    return v0
.end method

.method public locationString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 7
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    .line 9
    sub-int/2addr v1, v2

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 12
    const-string v2, " at line "

    .line 14
    const-string v3, " column "

    .line 16
    const-string v4, " path "

    .line 18
    invoke-static {v2, v0, v3, v1, v4}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public nextBoolean()Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

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
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

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
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 32
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 34
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

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
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    const-string v1, "Expected a boolean but was "

    .line 47
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0
.end method

.method public nextDouble()D
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xf

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1f

    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    aget v2, v0, v1

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    aput v2, v0, v1

    .line 28
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 30
    long-to-double v0, v0

    .line 31
    return-wide v0

    .line 32
    :cond_1f
    const/16 v1, 0x10

    .line 34
    const/16 v3, 0xb

    .line 36
    if-ne v0, v1, :cond_3a

    .line 38
    new-instance v0, Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 42
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 44
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 46
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 49
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 53
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 55
    add-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 58
    goto :goto_7c

    .line 59
    :cond_3a
    const/16 v1, 0x8

    .line 61
    if-eq v0, v1, :cond_6f

    .line 63
    const/16 v4, 0x9

    .line 65
    if-ne v0, v4, :cond_43

    .line 67
    goto :goto_6f

    .line 68
    :cond_43
    const/16 v1, 0xa

    .line 70
    if-ne v0, v1, :cond_4e

    .line 72
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 78
    goto :goto_7c

    .line 79
    :cond_4e
    if-ne v0, v3, :cond_51

    .line 81
    goto :goto_7c

    .line 82
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 84
    const-string v1, "Expected a double but was "

    .line 86
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0

    .line 112
    :cond_6f
    :goto_6f
    if-ne v0, v1, :cond_74

    .line 114
    const/16 v0, 0x27

    .line 116
    goto :goto_76

    .line 117
    :cond_74
    const/16 v0, 0x22

    .line 119
    :goto_76
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 125
    :goto_7c
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 127
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 129
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 132
    move-result-wide v0

    .line 133
    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 135
    if-nez v3, :cond_b3

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 140
    move-result v3

    .line 141
    if-nez v3, :cond_95

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_95

    .line 149
    goto :goto_b3

    .line 150
    :cond_95
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    const-string v4, "JSON forbids NaN and infinities: "

    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    invoke-direct {v2, v0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v2

    .line 180
    :cond_b3
    :goto_b3
    const/4 v3, 0x0

    .line 181
    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 183
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 185
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 187
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 189
    add-int/lit8 v3, v3, -0x1

    .line 191
    aget v4, v2, v3

    .line 193
    add-int/lit8 v4, v4, 0x1

    .line 195
    aput v4, v2, v3

    .line 197
    return-wide v0
.end method

.method public nextInt()I
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xf

    .line 11
    const-string v2, "Expected an int but was "

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ne v0, v1, :cond_40

    .line 16
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 18
    long-to-int v4, v0

    .line 19
    int-to-long v5, v4

    .line 20
    cmp-long v0, v0, v5

    .line 22
    if-nez v0, :cond_26

    .line 24
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 26
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 28
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 32
    aget v2, v0, v1

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    aput v2, v0, v1

    .line 38
    return v4

    .line 39
    :cond_26
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 41
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
    :cond_40
    const/16 v1, 0x10

    .line 67
    if-ne v0, v1, :cond_59

    .line 69
    new-instance v0, Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 73
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 75
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 77
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 80
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 82
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 84
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 86
    add-int/2addr v0, v1

    .line 87
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 89
    goto :goto_ad

    .line 90
    :cond_59
    const/16 v1, 0xa

    .line 92
    const/16 v4, 0x8

    .line 94
    if-eq v0, v4, :cond_82

    .line 96
    const/16 v5, 0x9

    .line 98
    if-eq v0, v5, :cond_82

    .line 100
    if-ne v0, v1, :cond_66

    .line 102
    goto :goto_82

    .line 103
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 105
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 130
    throw v0

    .line 131
    :cond_82
    :goto_82
    if-ne v0, v1, :cond_8b

    .line 133
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 139
    goto :goto_98

    .line 140
    :cond_8b
    if-ne v0, v4, :cond_90

    .line 142
    const/16 v0, 0x27

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    const/16 v0, 0x22

    .line 147
    :goto_92
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 153
    :goto_98
    :try_start_98
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 158
    move-result v0

    .line 159
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 161
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 163
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 165
    add-int/lit8 v4, v4, -0x1

    .line 167
    aget v5, v1, v4

    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 171
    aput v5, v1, v4
    :try_end_ac
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_ac} :catch_ad

    .line 173
    return v0

    .line 174
    :catch_ad
    :goto_ad
    const/16 v0, 0xb

    .line 176
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 178
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 183
    move-result-wide v0

    .line 184
    double-to-int v4, v0

    .line 185
    int-to-double v5, v4

    .line 186
    cmpl-double v0, v5, v0

    .line 188
    if-nez v0, :cond_cf

    .line 190
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 193
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 195
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 197
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 201
    aget v2, v0, v1

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 205
    aput v2, v0, v1

    .line 207
    return v4

    .line 208
    :cond_cf
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 210
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v0
.end method

.method public nextLong()J
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xf

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1e

    .line 14
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 22
    aget v2, v0, v1

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    aput v2, v0, v1

    .line 28
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 30
    return-wide v0

    .line 31
    :cond_1e
    const/16 v1, 0x10

    .line 33
    const-string v3, "Expected a long but was "

    .line 35
    if-ne v0, v1, :cond_39

    .line 37
    new-instance v0, Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 41
    iget v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 43
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 45
    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 48
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 50
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 52
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 54
    add-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 57
    goto :goto_8d

    .line 58
    :cond_39
    const/16 v1, 0xa

    .line 60
    const/16 v4, 0x8

    .line 62
    if-eq v0, v4, :cond_62

    .line 64
    const/16 v5, 0x9

    .line 66
    if-eq v0, v5, :cond_62

    .line 68
    if-ne v0, v1, :cond_46

    .line 70
    goto :goto_62

    .line 71
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw v0

    .line 99
    :cond_62
    :goto_62
    if-ne v0, v1, :cond_6b

    .line 101
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 107
    goto :goto_78

    .line 108
    :cond_6b
    if-ne v0, v4, :cond_70

    .line 110
    const/16 v0, 0x27

    .line 112
    goto :goto_72

    .line 113
    :cond_70
    const/16 v0, 0x22

    .line 115
    :goto_72
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 121
    :goto_78
    :try_start_78
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 126
    move-result-wide v0

    .line 127
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 129
    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 131
    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 133
    add-int/lit8 v5, v5, -0x1

    .line 135
    aget v6, v4, v5

    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 139
    aput v6, v4, v5
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_8c} :catch_8d

    .line 141
    return-wide v0

    .line 142
    :catch_8d
    :goto_8d
    const/16 v0, 0xb

    .line 144
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 146
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 151
    move-result-wide v0

    .line 152
    double-to-long v4, v0

    .line 153
    long-to-double v6, v4

    .line 154
    cmpl-double v0, v6, v0

    .line 156
    if-nez v0, :cond_af

    .line 158
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 161
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 163
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 165
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 167
    add-int/lit8 v1, v1, -0x1

    .line 169
    aget v2, v0, v1

    .line 171
    add-int/lit8 v2, v2, 0x1

    .line 173
    aput v2, v0, v1

    .line 175
    return-wide v4

    .line 176
    :cond_af
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 178
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 201
    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xe

    .line 11
    if-ne v0, v1, :cond_11

    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_26

    .line 18
    :cond_11
    const/16 v1, 0xc

    .line 20
    if-ne v0, v1, :cond_1c

    .line 22
    const/16 v0, 0x27

    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_26

    .line 29
    :cond_1c
    const/16 v1, 0xd

    .line 31
    if-ne v0, v1, :cond_32

    .line 33
    const/16 v0, 0x22

    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :goto_26
    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 42
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 44
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 46
    add-int/lit8 v2, v2, -0x1

    .line 48
    aput-object v0, v1, v2

    .line 50
    return-object v0

    .line 51
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    const-string v1, "Expected a name but was "

    .line 55
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw v0
.end method

.method public nextNull()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/4 v1, 0x7

    .line 10
    if-ne v0, v1, :cond_1b

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 15
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 17
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    aget v2, v0, v1

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    aput v2, v0, v1

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    const-string v1, "Expected null but was "

    .line 32
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 8
    move-result v0

    .line 9
    :cond_8
    const/16 v1, 0xa

    .line 11
    if-ne v0, v1, :cond_11

    .line 13
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_52

    .line 18
    :cond_11
    const/16 v1, 0x8

    .line 20
    if-ne v0, v1, :cond_1c

    .line 22
    const/16 v0, 0x27

    .line 24
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_52

    .line 29
    :cond_1c
    const/16 v1, 0x9

    .line 31
    if-ne v0, v1, :cond_27

    .line 33
    const/16 v0, 0x22

    .line 35
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    goto :goto_52

    .line 40
    :cond_27
    const/16 v1, 0xb

    .line 42
    if-ne v0, v1, :cond_31

    .line 44
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 46
    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 49
    goto :goto_52

    .line 50
    :cond_31
    const/16 v1, 0xf

    .line 52
    if-ne v0, v1, :cond_3c

    .line 54
    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    goto :goto_52

    .line 61
    :cond_3c
    const/16 v1, 0x10

    .line 63
    if-ne v0, v1, :cond_62

    .line 65
    new-instance v0, Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    .line 69
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 71
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 73
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 76
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 78
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 80
    add-int/2addr v1, v2

    .line 81
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 83
    :goto_52
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 86
    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 88
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 90
    add-int/lit8 v2, v2, -0x1

    .line 92
    aget v3, v1, v2

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 96
    aput v3, v1, v2

    .line 98
    return-object v0

    .line 99
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 101
    const-string v1, "Expected a string but was "

    .line 103
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

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
    :pswitch_11  #0x11
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    .line 20
    return-object v0

    .line 21
    :pswitch_14  #0xf, 0x10
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    .line 23
    return-object v0

    .line 24
    :pswitch_17  #0xc, 0xd, 0xe
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    .line 26
    return-object v0

    .line 27
    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    .line 29
    return-object v0

    .line 30
    :pswitch_1d  #0x7
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    .line 32
    return-object v0

    .line 33
    :pswitch_20  #0x5, 0x6
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    .line 35
    return-object v0

    .line 36
    :pswitch_23  #0x4
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 38
    return-object v0

    .line 39
    :pswitch_26  #0x3
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    .line 41
    return-object v0

    .line 42
    :pswitch_29  #0x2
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 44
    return-object v0

    .line 45
    :pswitch_2c  #0x1
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

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
        :pswitch_14  #0000000f
        :pswitch_14  #00000010
        :pswitch_11  #00000011
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    .line 3
    return-void
.end method

.method public skipValue()V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 5
    if-nez v2, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 10
    move-result v2

    .line 11
    :cond_a
    const/4 v3, 0x3

    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v3, :cond_14

    .line 15
    invoke-direct {p0, v4}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 18
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_64

    .line 21
    :cond_14
    if-ne v2, v4, :cond_1a

    .line 23
    invoke-direct {p0, v3}, Lcom/google/gson/stream/JsonReader;->push(I)V

    .line 26
    goto :goto_11

    .line 27
    :cond_1a
    const/4 v3, 0x4

    .line 28
    if-ne v2, v3, :cond_25

    .line 30
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 32
    sub-int/2addr v2, v4

    .line 33
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 35
    :goto_22
    add-int/lit8 v1, v1, -0x1

    .line 37
    goto :goto_64

    .line 38
    :cond_25
    const/4 v3, 0x2

    .line 39
    if-ne v2, v3, :cond_2e

    .line 41
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 43
    sub-int/2addr v2, v4

    .line 44
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 46
    goto :goto_22

    .line 47
    :cond_2e
    const/16 v3, 0xe

    .line 49
    if-eq v2, v3, :cond_61

    .line 51
    const/16 v3, 0xa

    .line 53
    if-ne v2, v3, :cond_37

    .line 55
    goto :goto_61

    .line 56
    :cond_37
    const/16 v3, 0x8

    .line 58
    if-eq v2, v3, :cond_5b

    .line 60
    const/16 v3, 0xc

    .line 62
    if-ne v2, v3, :cond_40

    .line 64
    goto :goto_5b

    .line 65
    :cond_40
    const/16 v3, 0x9

    .line 67
    if-eq v2, v3, :cond_55

    .line 69
    const/16 v3, 0xd

    .line 71
    if-ne v2, v3, :cond_49

    .line 73
    goto :goto_55

    .line 74
    :cond_49
    const/16 v3, 0x10

    .line 76
    if-ne v2, v3, :cond_64

    .line 78
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 80
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    .line 82
    add-int/2addr v2, v3

    .line 83
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    .line 85
    goto :goto_64

    .line 86
    :cond_55
    :goto_55
    const/16 v2, 0x22

    .line 88
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 91
    goto :goto_64

    .line 92
    :cond_5b
    :goto_5b
    const/16 v2, 0x27

    .line 94
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    .line 97
    goto :goto_64

    .line 98
    :cond_61
    :goto_61
    invoke-direct {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    .line 101
    :cond_64
    :goto_64
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 103
    if-nez v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    .line 107
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    .line 109
    add-int/lit8 v2, v1, -0x1

    .line 111
    aget v3, v0, v2

    .line 113
    add-int/2addr v3, v4

    .line 114
    aput v3, v0, v2

    .line 116
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 118
    sub-int/2addr v1, v4

    .line 119
    const-string v2, "null"

    .line 121
    aput-object v2, v0, v1

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
