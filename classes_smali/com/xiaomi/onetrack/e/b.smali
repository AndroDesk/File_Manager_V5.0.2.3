.class public Lcom/xiaomi/onetrack/e/b;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/onetrack/f/b;
    .registers 5

    new-instance v0, Lcom/xiaomi/onetrack/e/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/onetrack/f/b;
    .registers 5

    new-instance v0, Lcom/xiaomi/onetrack/a/b/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
