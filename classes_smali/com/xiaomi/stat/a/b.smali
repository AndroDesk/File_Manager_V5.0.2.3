.class public Lcom/xiaomi/stat/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/xiaomi/stat/a/b;->d:I

    .line 8
    iput-boolean p3, p0, Lcom/xiaomi/stat/a/b;->e:Z

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v0, "sub"

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    const-string v2, "\""

    const-string v3, " = \""

    if-eqz v1, :cond_14

    const-string v1, " is null"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 4
    :cond_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_1f
    iget v1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const-string v4, " and "

    if-eqz v1, :cond_2f

    const-string v1, "eg"

    const-string v5, "mistat_basic"

    .line 6
    invoke-static {v0, v4, v1, v3, v5}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string v1, "is_am"

    const-string v2, " = "

    .line 8
    invoke-static {v0, v4, v1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    if-eq p1, p3, :cond_e

    goto :goto_21

    .line 22
    :cond_e
    iget p1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const/4 p3, 0x1

    if-nez p1, :cond_14

    return p3

    .line 23
    :cond_14
    iget-boolean p1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    if-eqz p1, :cond_21

    const-string p1, "mistat_basic"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    return p3

    :cond_21
    :goto_21
    return v0
.end method
