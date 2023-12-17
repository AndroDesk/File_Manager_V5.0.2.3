.class public final Lv1/b;
.super Ljava/lang/Object;
.source "HttpClientProxyHelper.java"


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lv1/b;->a:I

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lv1/b;->b:[Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 7

    .line 1
    iget v0, p0, Lv1/b;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-le v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-nez v0, :cond_10

    .line 11
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 13
    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    .line 19
    iget-object v1, p0, Lv1/b;->b:[Ljava/lang/String;

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    iget v3, p0, Lv1/b;->a:I

    .line 27
    if-ltz v3, :cond_22

    .line 29
    array-length v4, v1

    .line 30
    if-lt v3, v4, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    aget-object v2, v1, v3

    .line 35
    :cond_22
    :goto_22
    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "Dest-Url"

    .line 40
    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method public final b([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lv1/b;->b:[Ljava/lang/String;

    .line 3
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lv1/b;->a:I

    .line 6
    return-void
.end method

.method public final c()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lv1/b;->b:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v2, p0, Lv1/b;->a:I

    .line 9
    const/4 v3, 0x1

    .line 10
    add-int/2addr v2, v3

    .line 11
    iput v2, p0, Lv1/b;->a:I

    .line 13
    array-length v0, v0

    .line 14
    if-ge v2, v0, :cond_10

    .line 16
    return v3

    .line 17
    :cond_10
    sub-int/2addr v2, v3

    .line 18
    iput v2, p0, Lv1/b;->a:I

    .line 20
    return v1
.end method
