.class public abstract Lcom/airbnb/lottie/parser/moshi/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;,
        Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;
    }
.end annotation


# static fields
.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field public failOnUnknown:Z

.field public lenient:Z

.field public pathIndices:[I

.field public pathNames:[Ljava/lang/String;

.field public scopes:[I

.field public stackSize:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    const/16 v0, 0x80

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

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
    sget-object v2, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

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
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

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
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x20

    .line 6
    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 10
    new-array v1, v0, [Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 14
    new-array v0, v0, [I

    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lp4/a;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->string(Lp4/a;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static of(Lp4/b;)Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .registers 2

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;

    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;-><init>(Lp4/b;)V

    .line 6
    return-object v0
.end method

.method private static string(Lp4/a;Ljava/lang/String;)V
    .registers 10

    .line 1
    sget-object v0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 3
    check-cast p0, Lokio/a;

    .line 5
    const/16 v1, 0x22

    .line 7
    invoke-virtual {p0, v1}, Lokio/a;->q(I)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    move v5, v4

    .line 17
    :goto_10
    if-ge v4, v2, :cond_3d

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v6

    .line 23
    const/16 v7, 0x80

    .line 25
    if-ge v6, v7, :cond_1f

    .line 27
    aget-object v6, v0, v6

    .line 29
    if-nez v6, :cond_2c

    .line 31
    goto :goto_3a

    .line 32
    :cond_1f
    const/16 v7, 0x2028

    .line 34
    if-ne v6, v7, :cond_26

    .line 36
    const-string v6, "\\u2028"

    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    const/16 v7, 0x2029

    .line 41
    if-ne v6, v7, :cond_3a

    .line 43
    const-string v6, "\\u2029"

    .line 45
    :cond_2c
    :goto_2c
    if-ge v5, v4, :cond_31

    .line 47
    invoke-virtual {p0, v5, v4, p1}, Lokio/a;->s(IILjava/lang/String;)V

    .line 50
    :cond_31
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 53
    move-result v5

    .line 54
    invoke-virtual {p0, v3, v5, v6}, Lokio/a;->s(IILjava/lang/String;)V

    .line 57
    add-int/lit8 v5, v4, 0x1

    .line 59
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_10

    .line 62
    :cond_3d
    if-ge v5, v2, :cond_42

    .line 64
    invoke-virtual {p0, v5, v2, p1}, Lokio/a;->s(IILjava/lang/String;)V

    .line 67
    :cond_42
    invoke-virtual {p0, v1}, Lokio/a;->q(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public abstract beginArray()V
.end method

.method public abstract beginObject()V
.end method

.method public abstract endArray()V
.end method

.method public abstract endObject()V
.end method

.method public final getPath()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 5
    iget-object v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/lottie/parser/moshi/JsonScope;->getPath(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public abstract hasNext()Z
.end method

.method public abstract nextBoolean()Z
.end method

.method public abstract nextDouble()D
.end method

.method public abstract nextInt()I
.end method

.method public abstract nextName()Ljava/lang/String;
.end method

.method public abstract nextString()Ljava/lang/String;
.end method

.method public abstract peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;
.end method

.method public final pushScope(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_44

    .line 8
    const/16 v2, 0x100

    .line 10
    if-eq v0, v2, :cond_2d

    .line 12
    array-length v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x2

    .line 15
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 23
    array-length v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x2

    .line 26
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 36
    array-length v1, v0

    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->pathIndices:[I

    .line 45
    goto :goto_44

    .line 46
    :cond_2d
    new-instance p1, Lcom/airbnb/lottie/parser/moshi/JsonDataException;

    .line 48
    const-string v0, "Nesting too deep at "

    .line 50
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p1, v0}, Lcom/airbnb/lottie/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->scopes:[I

    .line 71
    iget v1, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 73
    add-int/lit8 v2, v1, 0x1

    .line 75
    iput v2, p0, Lcom/airbnb/lottie/parser/moshi/JsonReader;->stackSize:I

    .line 77
    aput p1, v0, v1

    .line 79
    return-void
.end method

.method public abstract selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I
.end method

.method public abstract skipName()V
.end method

.method public abstract skipValue()V
.end method

.method public final syntaxError(Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;
    .registers 4

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;

    .line 3
    const-string v1, " at path "

    .line 5
    invoke-static {p1, v1}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/airbnb/lottie/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method
