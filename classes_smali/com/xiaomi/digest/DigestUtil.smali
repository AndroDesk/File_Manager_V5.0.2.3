.class public Lcom/xiaomi/digest/DigestUtil;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# static fields
.field private static final MAX_CALCULATE_LINE:I = 0x14

.field public static final MQS_JE_EXP_LIST:[Ljava/lang/String;

.field private static final REGEX:Ljava/lang/String; = "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

.field private static final REGEX_$:Ljava/lang/String; = "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}"

.field private static final REGEX_A:Ljava/lang/String; = "@[0-9a-fA-F]{1,10}"

.field private static final REGEX_Flg:Ljava/lang/String; = "0x[0-9a-fA-F]{1,10}"

.field private static final REGEX_NUMBER:Ljava/lang/String; = "\\d+[B,KB,MB]*"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "java.lang.OutOfMemoryError"

    .line 3
    const-string v1, "No space left on device"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/xiaomi/digest/DigestUtil;->MQS_JE_EXP_LIST:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcuateJavaDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "\\t"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "\\n"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    array-length v2, p0

    .line 21
    const/16 v3, 0x14

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_1c
    if-ge v4, v2, :cond_3b

    .line 31
    aget-object v5, p0, v4

    .line 33
    const-string v6, "((java:)|(length=)|(index=)|(Index:)|(Size:))\\d+"

    .line 35
    const-string v7, "$1XX"

    .line 37
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    const-string v6, "\\$[0-9a-fA-F]{1,10}@[0-9a-fA-F]{1,10}|@[0-9a-fA-F]{1,10}|0x[0-9a-fA-F]{1,10}"

    .line 43
    const-string v7, "XX"

    .line 45
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v5

    .line 49
    const-string v6, "\\d+[B,KB,MB]*"

    .line 51
    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    aput-object v5, p0, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_1c

    .line 60
    :cond_3b
    :goto_3b
    if-ge v3, v2, :cond_5f

    .line 62
    aget-object v1, p0, v3

    .line 64
    const-string v4, "..."

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_52

    .line 72
    aget-object v1, p0, v3

    .line 74
    const-string v4, "more"

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_52

    .line 82
    goto :goto_5f

    .line 83
    :cond_52
    aget-object v1, p0, v3

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v1, 0xa

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 95
    goto :goto_3b

    .line 96
    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/xiaomi/digest/DigestUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "UTF-8"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 16
    move-result-object p0
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_38

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    array-length v1, p0

    .line 20
    mul-int/lit8 v1, v1, 0x2

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    array-length v1, p0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1a
    if-ge v2, v1, :cond_33

    .line 29
    aget-byte v3, p0, v2

    .line 31
    and-int/lit16 v3, v3, 0xff

    .line 33
    const/16 v4, 0x10

    .line 35
    if-ge v3, v4, :cond_29

    .line 37
    const-string v4, "0"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_29
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1a

    .line 52
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :catch_38
    move-exception p0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    .line 60
    const-string v1, "UnsupportedEncodingException"

    .line 62
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    throw v0

    .line 66
    :catch_41
    move-exception p0

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    .line 69
    const-string v1, "NoSuchAlgorithmException"

    .line 71
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v0
.end method
