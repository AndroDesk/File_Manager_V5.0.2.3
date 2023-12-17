.class public final Lcom/google/gson/internal/JavaVersion;
.super Ljava/lang/Object;
.source "JavaVersion.java"


# static fields
.field private static final majorJavaVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->determineMajorJavaVersion()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static determineMajorJavaVersion()I
    .registers 1

    .line 1
    const-string v0, "java.version"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/gson/internal/JavaVersion;->getMajorJavaVersion(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private static extractBeginningInt(Ljava/lang/String;)I
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1c

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1c

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result p0
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_24} :catch_25

    .line 37
    return p0

    .line 38
    :catch_25
    const/4 p0, -0x1

    .line 39
    return p0
.end method

.method public static getMajorJavaVersion()I
    .registers 1

    .line 3
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    return v0
.end method

.method public static getMajorJavaVersion(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->parseDotted(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 2
    invoke-static {p0}, Lcom/google/gson/internal/JavaVersion;->extractBeginningInt(Ljava/lang/String;)I

    move-result v0

    :cond_b
    if-ne v0, v1, :cond_f

    const/4 p0, 0x6

    return p0

    :cond_f
    return v0
.end method

.method public static isJava9OrLater()Z
    .registers 2

    .line 1
    sget v0, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 3
    const/16 v1, 0x9

    .line 5
    if-lt v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private static parseDotted(Ljava/lang/String;)I
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "[._]"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v0, p0, v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1a

    .line 17
    array-length v2, p0

    .line 18
    if-le v2, v1, :cond_1a

    .line 20
    aget-object p0, p0, v1

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result p0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 26
    return p0

    .line 27
    :cond_1a
    return v0

    .line 28
    :catch_1b
    const/4 p0, -0x1

    .line 29
    return p0
.end method
