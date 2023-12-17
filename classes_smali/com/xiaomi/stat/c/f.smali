.class public Lcom/xiaomi/stat/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final e:Ljava/lang/String; = "UploadPolicy"


# instance fields
.field public d:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 6
    iput-object p1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    return-void
.end method

.method private a(I)Z
    .registers 2

    and-int/lit8 p1, p1, -0x20

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private b()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->b(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, " getExperiencePlanPolicy: "

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, " isInternationalVersion= "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, " isAnonymous= "

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean v2, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string v2, "UploadPolicy"

    .line 50
    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x3

    .line 54
    if-eqz v0, :cond_38

    .line 56
    return v1

    .line 57
    :cond_38
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x2

    .line 62
    if-eqz v0, :cond_44

    .line 64
    iget-boolean v0, p0, Lcom/xiaomi/stat/c/f;->d:Z

    .line 66
    if-eqz v0, :cond_44

    .line 68
    return v1

    .line 69
    :cond_44
    return v2
.end method

.method private c()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/b;->e(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v2, " getCustomPrivacyPolicy: state="

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "UploadPolicy"

    .line 26
    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_21

    .line 32
    const/4 v0, 0x3

    .line 33
    return v0

    .line 34
    :cond_21
    return v1
.end method

.method private d()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/f;->f:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/xiaomi/stat/b;->d(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->c()I

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_d
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->b()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method private e()I
    .registers 6

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->a(Landroid/content/Context;)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    .line 12
    move-result v1

    .line 13
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/f;->a(I)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_17

    .line 19
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    .line 22
    move-result v1

    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    .line 27
    move-result v1

    .line 28
    :goto_1b
    const-string v2, " getHttpServicePolicy: currentNet= "

    .line 30
    const-string v3, " Config.getServerNetworkType= "

    .line 32
    invoke-static {v2, v0, v3}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v2

    .line 36
    invoke-static {}, Lcom/xiaomi/stat/b;->l()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, " Config.getUserNetworkType()= "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Lcom/xiaomi/stat/b;->i()I

    .line 51
    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v3, " (configNet & currentNet) == currentNet "

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    and-int/2addr v1, v0

    .line 61
    const/4 v3, 0x1

    .line 62
    if-ne v1, v0, :cond_41

    .line 64
    move v4, v3

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    const/4 v4, 0x0

    .line 67
    :goto_42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    const-string v4, "UploadPolicy"

    .line 76
    invoke-static {v4, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-ne v1, v0, :cond_52

    .line 81
    const/4 v0, 0x3

    .line 82
    return v0

    .line 83
    :cond_52
    return v3
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->d()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/stat/c/f;->e()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method
