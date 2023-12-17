.class public Lcom/xiaomi/onetrack/a/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "AdMonitor"


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/xiaomi/onetrack/a/b/a;->e:I

    return-void
.end method

.method public a(J)V
    .registers 3

    .line 4
    iput-wide p1, p0, Lcom/xiaomi/onetrack/a/b/a;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/a/b/a;->e:I

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 3
    iput p1, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/onetrack/a/b/a;->g:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public g()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/onetrack/a/b/a;->k:I

    .line 3
    return v0
.end method

.method public h()Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->f:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_31

    .line 9
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->h:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_31

    .line 17
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/b/a;->i:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1a

    .line 23
    if-nez v0, :cond_31

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :catch_1a
    move-exception v0

    .line 28
    const-string v1, "check AdMonitor isValid error:"

    .line 30
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "AdMonitor"

    .line 47
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_31
    const/4 v0, 0x0

    .line 51
    return v0
.end method
