.class public Lcom/xiaomi/micloudsdk/utils/RegexUtils;
.super Ljava/lang/Object;
.source "RegexUtils.java"


# static fields
.field private static final DOT:C = '.'

.field private static final HIDDEN_STATE_CHAR:C = '*'

.field private static final IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field private static final IP_ADDRESS_PATTERN_STRING:Ljava/lang/String; = "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertSensitiveInfo(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    sub-int v1, p2, p1

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    add-int/lit8 v1, p1, 0x2

    .line 10
    add-int/lit8 v2, p2, -0x2

    .line 12
    :goto_b
    if-ge p1, p2, :cond_2d

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x2e

    .line 20
    if-ne v3, v4, :cond_19

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    goto :goto_2a

    .line 26
    :cond_19
    if-ge p1, v1, :cond_1f

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_2a

    .line 32
    :cond_1f
    if-le p1, v2, :cond_25

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    const/16 v3, 0x2a

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    .line 45
    goto :goto_b

    .line 46
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static hideIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_35

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 37
    move-result v2

    .line 38
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 41
    move-result v3

    .line 42
    invoke-static {p0, v2, v3}, Lcom/xiaomi/micloudsdk/utils/RegexUtils;->convertSensitiveInfo(Ljava/lang/String;II)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 52
    move-result v2

    .line 53
    goto :goto_10

    .line 54
    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    move-result v0

    .line 58
    if-ge v2, v0, :cond_46

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 71
    :cond_46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
