.class final Lcom/xiaomi/onetrack/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/util/r$a;


# instance fields
.field public final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/s;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/s;->a:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
