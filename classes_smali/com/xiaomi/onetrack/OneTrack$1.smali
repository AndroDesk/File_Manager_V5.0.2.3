.class final Lcom/xiaomi/onetrack/OneTrack$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->a(Z)V

    .line 6
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/OneTrack$1;->a:Z

    .line 8
    invoke-static {v0}, Lcom/xiaomi/onetrack/c/i;->b(Z)V

    .line 11
    return-void
.end method
