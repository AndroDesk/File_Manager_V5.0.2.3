.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    const/16 v0, 0x80

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_8
    const/16 v2, 0x1f

    .line 11
    if-gt v1, v2, :cond_22

    .line 13
    sget-object v2, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 15
    const/4 v3, 0x1

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v4

    .line 22
    aput-object v4, v3, v0

    .line 24
    const-string v4, "\\u%04x"

    .line 26
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    aput-object v3, v2, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_8

    .line 35
    :cond_22
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 37
    const/16 v1, 0x22

    .line 39
    const-string v2, "\\\""

    .line 41
    aput-object v2, v0, v1

    .line 43
    const/16 v1, 0x5c

    .line 45
    const-string v2, "\\\\"

    .line 47
    aput-object v2, v0, v1

    .line 49
    const/16 v1, 0x9

    .line 51
    const-string v2, "\\t"

    .line 53
    aput-object v2, v0, v1

    .line 55
    const/16 v1, 0x8

    .line 57
    const-string v2, "\\b"

    .line 59
    aput-object v2, v0, v1

    .line 61
    const/16 v1, 0xa

    .line 63
    const-string v2, "\\n"

    .line 65
    aput-object v2, v0, v1

    .line 67
    const/16 v1, 0xd

    .line 69
    const-string v2, "\\r"

    .line 71
    aput-object v2, v0, v1

    .line 73
    const/16 v1, 0xc

    .line 75
    const-string v2, "\\f"

    .line 77
    aput-object v2, v0, v1

    .line 79
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, [Ljava/lang/String;

    .line 85
    sput-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 87
    const/16 v1, 0x3c

    .line 89
    const-string v2, "\\u003c"

    .line 91
    aput-object v2, v0, v1

    .line 93
    const/16 v1, 0x3e

    .line 95
    const-string v2, "\\u003e"

    .line 97
    aput-object v2, v0, v1

    .line 99
    const/16 v1, 0x26

    .line 101
    const-string v2, "\\u0026"

    .line 103
    aput-object v2, v0, v1

    .line 105
    const/16 v1, 0x3d

    .line 107
    const-string v2, "\\u003d"

    .line 109
    aput-object v2, v0, v1

    .line 111
    const/16 v1, 0x27

    .line 113
    const-string v2, "\\u0027"

    .line 115
    aput-object v2, v0, v1

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 17
    const-string v0, ":"

    .line 19
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 31
    const-string v0, "out == null"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method private beforeName()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    if-ne v0, v1, :cond_f

    .line 8
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 10
    const/16 v1, 0x2c

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_1a

    .line 19
    :goto_12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    const-string v1, "Nesting problem."

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0
.end method

.method private beforeValue()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v1, :cond_43

    .line 9
    if-eq v0, v2, :cond_38

    .line 11
    const/4 v1, 0x4

    .line 12
    if-eq v0, v1, :cond_2c

    .line 14
    const/4 v1, 0x6

    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v0, v1, :cond_28

    .line 18
    if-ne v0, v2, :cond_20

    .line 20
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 22
    if-eqz v0, :cond_18

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    const-string v1, "JSON must have only one top-level value."

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    const-string v1, "Nesting problem."

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_28
    :goto_28
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 44
    goto :goto_49

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 47
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 52
    const/4 v0, 0x5

    .line 53
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 56
    goto :goto_49

    .line 57
    :cond_38
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 59
    const/16 v1, 0x2c

    .line 61
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 64
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 67
    goto :goto_49

    .line 68
    :cond_43
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 71
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 74
    :goto_49
    return-void
.end method

.method private close(IIC)Lcom/google/gson/stream/JsonWriter;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_11

    if-ne v0, p1, :cond_9

    goto :goto_11

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez p1, :cond_26

    .line 4
    iget p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-ne v0, p2, :cond_20

    .line 5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    .line 6
    :cond_20
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 7
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Dangling name: "

    .line 8
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private newline()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 8
    const/16 v1, 0xa

    .line 10
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 13
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 15
    const/4 v1, 0x1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1b

    .line 18
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 20
    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_f

    .line 28
    :cond_1b
    return-void
.end method

.method private open(IC)Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 7
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 9
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 12
    return-object p0
.end method

.method private peek()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    aget v0, v1, v0

    .line 11
    return v0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    const-string v1, "JsonWriter is closed."

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method private push(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 3
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_f

    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 10
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 18
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 20
    add-int/lit8 v2, v1, 0x1

    .line 22
    iput v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 24
    aput p1, v0, v1

    .line 26
    return-void
.end method

.method private replaceTop(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    .line 3
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 7
    aput p1, v0, v1

    .line 9
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object v0, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 12
    const/16 v2, 0x22

    .line 14
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_16
    if-ge v3, v1, :cond_45

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    move-result v5

    .line 29
    const/16 v6, 0x80

    .line 31
    if-ge v5, v6, :cond_25

    .line 33
    aget-object v5, v0, v5

    .line 35
    if-nez v5, :cond_32

    .line 37
    goto :goto_42

    .line 38
    :cond_25
    const/16 v6, 0x2028

    .line 40
    if-ne v5, v6, :cond_2c

    .line 42
    const-string v5, "\\u2028"

    .line 44
    goto :goto_32

    .line 45
    :cond_2c
    const/16 v6, 0x2029

    .line 47
    if-ne v5, v6, :cond_42

    .line 49
    const-string v5, "\\u2029"

    .line 51
    :cond_32
    :goto_32
    if-ge v4, v3, :cond_3b

    .line 53
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 55
    sub-int v7, v3, v4

    .line 57
    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 60
    :cond_3b
    iget-object v4, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 62
    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v4, v3, 0x1

    .line 67
    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    .line 69
    goto :goto_16

    .line 70
    :cond_45
    if-ge v4, v1, :cond_4d

    .line 72
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 74
    sub-int/2addr v1, v4

    .line 75
    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 78
    :cond_4d
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 80
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 83
    return-void
.end method

.method private writeDeferredName()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    .line 8
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 10
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 16
    :cond_f
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 4
    const/4 v0, 0x1

    .line 5
    const/16 v1, 0x5b

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(IC)Lcom/google/gson/stream/JsonWriter;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 4
    const/4 v0, 0x3

    .line 5
    const/16 v1, 0x7b

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(IC)Lcom/google/gson/stream/JsonWriter;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public close()V
    .registers 4

    .line 13
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 14
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    if-ne v0, v1, :cond_14

    .line 15
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    :cond_14
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    return-void

    .line 17
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x5d

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->close(IIC)Lcom/google/gson/stream/JsonWriter;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .registers 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x5

    .line 3
    const/16 v2, 0x7d

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->close(IIC)Lcom/google/gson/stream/JsonWriter;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public flush()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 7
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v1, "JsonWriter is closed."

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw v0
.end method

.method public final getSerializeNulls()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 3
    return v0
.end method

.method public final isHtmlSafe()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 3
    return v0
.end method

.method public isLenient()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 3
    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    if-nez p1, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 11
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 14
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 16
    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 19
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    if-eqz p1, :cond_1b

    .line 3
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 5
    if-nez v0, :cond_15

    .line 7
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 13
    return-object p0

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "JsonWriter is closed."

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 27
    throw p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 30
    const-string v0, "name == null"

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 16
    return-object p0

    .line 17
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 20
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 22
    const-string v1, "null"

    .line 24
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    return-object p0
.end method

.method public final setHtmlSafe(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 3
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 10
    const-string p1, ":"

    .line 12
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 14
    goto :goto_14

    .line 15
    :cond_e
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 17
    const-string p1, ": "

    .line 19
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 21
    :goto_14
    return-void
.end method

.method public final setLenient(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 3
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 3
    return-void
.end method

.method public value(D)Lcom/google/gson/stream/JsonWriter;
    .registers 6

    .line 12
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 13
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_2b

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_2b

    .line 14
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 16
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .registers 4

    .line 17
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 18
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 19
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lcom/google/gson/stream/JsonWriter;
    .registers 3

    if-nez p1, :cond_7

    .line 8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 10
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 11
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "true"

    goto :goto_1a

    :cond_18
    const-string p1, "false"

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .registers 5

    if-nez p1, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 21
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_42

    const-string v1, "-Infinity"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_42

    .line 25
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_42
    :goto_42
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 27
    iget-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .registers 2

    if-nez p1, :cond_7

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .registers 3

    .line 5
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 6
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeValue()V

    .line 7
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_d

    const-string p1, "true"

    goto :goto_f

    :cond_d
    const-string p1, "false"

    :goto_f
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
