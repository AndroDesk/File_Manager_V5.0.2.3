.class public Lcom/xiaomi/stat/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/b;->a:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/b;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/stat/a/b;->d:I

    iput-boolean p3, p0, Lcom/xiaomi/stat/a/b;->e:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const-string v0, "sub"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->f:Z

    const-string v2, "\""

    const-string v3, " = \""

    if-eqz v1, :cond_14

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    iget v1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const-string v4, " and "

    if-eqz v1, :cond_2f

    const-string v1, "eg"

    const-string v5, "mistat_basic"

    invoke-static {v0, v4, v1, v3, v5}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    const-string v1, "is_am"

    const-string v2, " = "

    invoke-static {v0, v4, v1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/stat/a/b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/xiaomi/stat/a/b;->e:Z

    if-eq p1, p3, :cond_e

    goto :goto_21

    :cond_e
    iget p1, p0, Lcom/xiaomi/stat/a/b;->d:I

    const/4 p3, 0x1

    if-nez p1, :cond_14

    return p3

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
