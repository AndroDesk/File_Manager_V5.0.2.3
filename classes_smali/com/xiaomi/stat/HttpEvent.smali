.class public Lcom/xiaomi/stat/HttpEvent;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 10

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .registers 14

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 14

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .registers 8

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/xiaomi/stat/HttpEvent;->d:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/xiaomi/stat/HttpEvent;->b:J

    .line 9
    iput p6, p0, Lcom/xiaomi/stat/HttpEvent;->a:I

    .line 10
    iput-object p7, p0, Lcom/xiaomi/stat/HttpEvent;->e:Ljava/lang/String;

    .line 11
    iput-wide p4, p0, Lcom/xiaomi/stat/HttpEvent;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/stat/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/HttpEvent;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNetFlow()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/HttpEvent;->c:J

    .line 3
    return-wide v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/HttpEvent;->a:I

    .line 3
    return v0
.end method

.method public getTimeCost()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/HttpEvent;->b:J

    .line 3
    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/HttpEvent;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method
