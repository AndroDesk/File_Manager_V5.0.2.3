.class final Lcom/xiaomi/onetrack/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/j;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/onetrack/c/j;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method
