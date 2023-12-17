.class public final Lcom/google/android/datatransport/cct/CCTDestination;
.super Ljava/lang/Object;
.source "CCTDestination.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/EncodedDestination;


# static fields
.field private static final DEFAULT_API_KEY:Ljava/lang/String;

.field public static final DEFAULT_END_POINT:Ljava/lang/String;

.field public static final DESTINATION_NAME:Ljava/lang/String; = "cct"

.field private static final EXTRAS_DELIMITER:Ljava/lang/String; = "\\"

.field private static final EXTRAS_VERSION_MARKER:Ljava/lang/String; = "1$"

.field public static final INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

.field public static final LEGACY_END_POINT:Ljava/lang/String;

.field public static final LEGACY_INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

.field private static final SUPPORTED_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final endPoint:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "hts/frbslgiggolai.o/0clgbthfra=snpoo"

    .line 3
    const-string v1, "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/datatransport/cct/StringMerger;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    .line 11
    const-string v1, "hts/frbslgigp.ogepscmv/ieo/eaybtho"

    .line 13
    const-string v2, "tp:/ieaeogn-agolai.o/1frlglgc/aclg"

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/datatransport/cct/StringMerger;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->LEGACY_END_POINT:Ljava/lang/String;

    .line 21
    const-string v2, "AzSCki82AwsLzKd5O8zo"

    .line 23
    const-string v3, "IayckHiZRO1EFl1aGoK"

    .line 25
    invoke-static {v2, v3}, Lcom/google/android/datatransport/cct/StringMerger;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_API_KEY:Ljava/lang/String;

    .line 31
    new-instance v3, Ljava/util/HashSet;

    .line 33
    const/4 v4, 0x2

    .line 34
    new-array v4, v4, [Lcom/google/android/datatransport/Encoding;

    .line 36
    const-string v5, "proto"

    .line 38
    invoke-static {v5}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, v4, v6

    .line 45
    const-string v5, "json"

    .line 47
    invoke-static {v5}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x1

    .line 52
    aput-object v5, v4, v6

    .line 54
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    move-result-object v4

    .line 58
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 64
    move-result-object v3

    .line 65
    sput-object v3, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 67
    new-instance v3, Lcom/google/android/datatransport/cct/CCTDestination;

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-direct {v3, v0, v4}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sput-object v3, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 75
    new-instance v0, Lcom/google/android/datatransport/cct/CCTDestination;

    .line 77
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sput-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->LEGACY_INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static decodeExtras([B)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    const-string v1, "UTF-8"

    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;)[B
    .registers 2

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    const-string v1, "UTF-8"

    .line 5
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    const-string p0, "1$"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_4e

    .line 20
    const/4 p0, 0x2

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v1, "\\"

    .line 27
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    array-length v1, v0

    .line 36
    if-ne v1, p0, :cond_46

    .line 38
    const/4 p0, 0x0

    .line 39
    aget-object p0, v0, p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3e

    .line 47
    const/4 v1, 0x1

    .line 48
    aget-object v0, v0, v1

    .line 50
    new-instance v1, Lcom/google/android/datatransport/cct/CCTDestination;

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3a

    .line 58
    const/4 v0, 0x0

    .line 59
    :cond_3a
    invoke-direct {v1, p0, v0}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v1

    .line 63
    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v0, "Missing endpoint in CCTDestination extras"

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v0, "Extra is not a valid encoded LegacyFlgDestination"

    .line 75
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0

    .line 79
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string v0, "Version marker missing from extras"

    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0
.end method


# virtual methods
.method public asByteArray()[B
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-object v1, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_a
    const/4 v1, 0x4

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v3, "1$"

    .line 17
    aput-object v3, v1, v2

    .line 19
    const/4 v2, 0x1

    .line 20
    iget-object v3, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    .line 22
    aput-object v3, v1, v2

    .line 24
    const/4 v2, 0x2

    .line 25
    const-string v3, "\\"

    .line 27
    aput-object v3, v1, v2

    .line 29
    const/4 v2, 0x3

    .line 30
    if-nez v0, :cond_21

    .line 32
    const-string v0, ""

    .line 34
    :cond_21
    aput-object v0, v1, v2

    .line 36
    const-string v0, "%s%s%s%s"

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "UTF-8"

    .line 44
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public getAPIKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CCTDestination;->apiKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPoint()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExtras()[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/cct/CCTDestination;->asByteArray()[B

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "cct"

    return-object v0
.end method

.method public getSupportedEncodings()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    .line 3
    return-object v0
.end method
