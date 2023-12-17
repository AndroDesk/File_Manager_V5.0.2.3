.class public Lcom/xiaomi/stat/aj;
.super Lcom/xiaomi/stat/MiStatParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/MiStatParams;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
