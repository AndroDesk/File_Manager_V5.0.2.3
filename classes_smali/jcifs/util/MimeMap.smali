.class public Ljcifs/util/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# static fields
.field private static final IN_SIZE:I = 0x1b58

.field private static final ST_COMM:I = 0x2

.field private static final ST_EXT:I = 0x5

.field private static final ST_GAP:I = 0x4

.field private static final ST_START:I = 0x1

.field private static final ST_TYPE:I = 0x3


# instance fields
.field private in:[B

.field private inLen:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1b58

    .line 6
    new-array v1, v0, [B

    .line 8
    iput-object v1, p0, Ljcifs/util/MimeMap;->in:[B

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "jcifs/util/mime.map"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 27
    :goto_1a
    iget-object v2, p0, Ljcifs/util/MimeMap;->in:[B

    .line 29
    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 31
    rsub-int v4, v3, 0x1b58

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 36
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    if-ne v2, v3, :cond_3b

    .line 40
    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 42
    const/16 v3, 0x64

    .line 44
    if-lt v2, v3, :cond_33

    .line 46
    if-eq v2, v0, :cond_33

    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 51
    return-void

    .line 52
    :cond_33
    new-instance v0, Ljava/io/IOException;

    .line 54
    const-string v1, "Error reading jcifs/util/mime.map resource"

    .line 56
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    throw v0

    .line 60
    :cond_3b
    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 62
    add-int/2addr v3, v2

    .line 63
    iput v3, p0, Ljcifs/util/MimeMap;->inLen:I

    .line 65
    goto :goto_1a
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "application/octet-stream"

    .line 1
    invoke-virtual {p0, p1, v0}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x1

    move v8, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3
    :goto_19
    iget v11, v0, Ljcifs/util/MimeMap;->inLen:I

    if-lt v7, v11, :cond_1e

    return-object p2

    .line 4
    :cond_1e
    iget-object v11, v0, Ljcifs/util/MimeMap;->in:[B

    aget-byte v11, v11, v7

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/16 v5, 0x9

    const/16 v14, 0x20

    if-eq v8, v6, :cond_7d

    const/16 v6, 0xa

    if-eq v8, v15, :cond_76

    if-eq v8, v13, :cond_8a

    const/4 v13, 0x5

    if-eq v8, v12, :cond_38

    if-eq v8, v13, :cond_3f

    goto/16 :goto_96

    :cond_38
    if-eq v11, v14, :cond_96

    if-ne v11, v5, :cond_3e

    goto/16 :goto_96

    :cond_3e
    move v8, v13

    :cond_3f
    if-eq v11, v5, :cond_4f

    if-eq v11, v6, :cond_4f

    if-eq v11, v14, :cond_4f

    const/16 v5, 0x23

    if-eq v11, v5, :cond_4f

    add-int/lit8 v5, v9, 0x1

    .line 5
    aput-byte v11, v2, v9

    move v9, v5

    goto :goto_96

    :cond_4f
    const/4 v5, 0x0

    :goto_50
    if-ge v5, v9, :cond_5f

    .line 6
    array-length v12, v3

    if-ne v9, v12, :cond_5f

    aget-byte v12, v2, v5

    aget-byte v13, v3, v5

    if-eq v12, v13, :cond_5c

    goto :goto_5f

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 7
    :cond_5f
    :goto_5f
    array-length v9, v3

    if-ne v5, v9, :cond_69

    .line 8
    new-instance v2, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v2, v1, v13, v10, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :cond_69
    const/16 v5, 0x23

    const/4 v13, 0x0

    if-ne v11, v5, :cond_70

    move v8, v15

    goto :goto_74

    :cond_70
    if-ne v11, v6, :cond_74

    move v10, v13

    const/4 v8, 0x1

    :cond_74
    :goto_74
    move v9, v13

    goto :goto_96

    :cond_76
    const/4 v13, 0x0

    if-ne v11, v6, :cond_96

    move v9, v13

    move v10, v9

    const/4 v8, 0x1

    goto :goto_96

    :cond_7d
    const/4 v6, 0x0

    if-eq v11, v14, :cond_96

    if-ne v11, v5, :cond_83

    goto :goto_96

    :cond_83
    const/16 v6, 0x23

    if-ne v11, v6, :cond_89

    move v8, v15

    goto :goto_96

    :cond_89
    move v8, v13

    :cond_8a
    if-eq v11, v14, :cond_95

    if-ne v11, v5, :cond_8f

    goto :goto_95

    :cond_8f
    add-int/lit8 v5, v10, 0x1

    .line 9
    aput-byte v11, v1, v10

    move v10, v5

    goto :goto_96

    :cond_95
    :goto_95
    move v8, v12

    :cond_96
    :goto_96
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_19
.end method
