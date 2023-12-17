.class public final Lp4/j;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lp4/j;->a:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public static a([BII[BI)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    if-ge v1, p4, :cond_12

    .line 5
    add-int v2, v1, p1

    .line 7
    aget-byte v2, p0, v2

    .line 9
    add-int v3, v1, p2

    .line 11
    aget-byte v3, p3, v3

    .line 13
    if-eq v2, v3, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_2

    .line 19
    :cond_12
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public static b(JJJ)V
    .registers 10

    .line 1
    or-long v0, p2, p4

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-ltz v0, :cond_13

    .line 9
    cmp-long v0, p2, p0

    .line 11
    if-gtz v0, :cond_13

    .line 13
    sub-long v0, p0, p2

    .line 15
    cmp-long v0, v0, p4

    .line 17
    if-ltz v0, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 22
    const/4 v1, 0x3

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object p0

    .line 30
    aput-object p0, v1, v2

    .line 32
    const/4 p0, 0x1

    .line 33
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v1, p0

    .line 39
    const/4 p0, 0x2

    .line 40
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object p1

    .line 44
    aput-object p1, v1, p0

    .line 46
    const-string p0, "size=%s offset=%s byteCount=%s"

    .line 48
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method
