.class public final Lv1/b;
.super Ljava/lang/Object;
.source "HttpClientProxyHelper.java"


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lv1/b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/b;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .registers 7

    iget v0, p0, Lv1/b;->a:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_10

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_10
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lv1/b;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    goto :goto_22

    :cond_18
    iget v3, p0, Lv1/b;->a:I

    if-ltz v3, :cond_22

    array-length v4, v1

    if-lt v3, v4, :cond_20

    goto :goto_22

    :cond_20
    aget-object v2, v1, v3

    :cond_22
    :goto_22
    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v1, "Dest-Url"

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lv1/b;->b:[Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lv1/b;->a:I

    return-void
.end method

.method public final c()Z
    .registers 5

    iget-object v0, p0, Lv1/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lv1/b;->a:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lv1/b;->a:I

    array-length v0, v0

    if-ge v2, v0, :cond_10

    return v3

    :cond_10
    sub-int/2addr v2, v3

    iput v2, p0, Lv1/b;->a:I

    return v1
.end method
