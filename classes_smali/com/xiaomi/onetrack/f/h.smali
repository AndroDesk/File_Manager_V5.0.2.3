.class Lcom/xiaomi/onetrack/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/xiaomi/onetrack/f/g;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/f/g;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/h;->b:Lcom/xiaomi/onetrack/f/g;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/f/g;->b(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/h;->a:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/c;->a(Landroid/content/Context;)V

    .line 11
    return-void
.end method
