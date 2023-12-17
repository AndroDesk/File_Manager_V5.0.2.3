.class final Lcom/xiaomi/onetrack/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/r$a;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/s;->a:Z

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/s;->a:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
