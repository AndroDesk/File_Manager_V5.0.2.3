.class final Lcom/xiaomi/onetrack/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/f;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/f;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/xiaomi/onetrack/f/f;->c:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/xiaomi/onetrack/f/f;->d:Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/f;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/f/f;->b:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/onetrack/f/f;->c:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/xiaomi/onetrack/f/f;->d:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/e/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/onetrack/f/b;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/c/c;->a()Lcom/xiaomi/onetrack/c/c;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/f/b;)V

    .line 20
    return-void
.end method
