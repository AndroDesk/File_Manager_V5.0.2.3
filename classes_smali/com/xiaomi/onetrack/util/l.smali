.class final Lcom/xiaomi/onetrack/util/l;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/xiaomi/onetrack/util/k$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/xiaomi/onetrack/util/k$a;)I
    .registers 3

    .line 1
    if-eqz p2, :cond_11

    .line 3
    iget-object p1, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_11

    .line 11
    iget-object p1, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result p1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 p1, 0x0

    .line 19
    :goto_12
    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    check-cast p2, Lcom/xiaomi/onetrack/util/k$a;

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/util/k$a;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
