.class public Lcom/xiaomi/onetrack/f/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "EventTrack"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/f/e;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/f/f;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method
