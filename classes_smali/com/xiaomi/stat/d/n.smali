.class public Lcom/xiaomi/stat/d/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x40

.field private static final b:I = 0x100

.field private static final c:I = 0x2800

.field private static final d:Ljava/lang/String; = "mistat_"

.field private static final e:Ljava/lang/String; = "mi_"

.field private static final f:Ljava/lang/String; = "abtest_"

.field private static final g:Ljava/lang/String; = "null"

.field private static h:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "^[a-zA-Z_][a-zA-Z0-9_]*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/xiaomi/stat/d/n;->h:Ljava/util/regex/Pattern;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    const-string v0, "parameter number exceed limits"

    .line 5
    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_32

    const-string v0, "mistat_"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "mi_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "abtest_"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_32

    .line 4
    :cond_27
    sget-object v0, Lcom/xiaomi/stat/d/n;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_32
    :goto_32
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_c

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x100

    .line 9
    if-le p0, v0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, "null"

    :cond_4
    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_c

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x2800

    .line 9
    if-le p0, v0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "invalid parameter name: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "parameter value is too long: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V

    .line 21
    return-void
.end method
