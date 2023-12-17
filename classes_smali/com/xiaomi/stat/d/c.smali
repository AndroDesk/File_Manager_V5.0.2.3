.class public Lcom/xiaomi/stat/d/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/d/c;->c()V

    .line 8
    :cond_7
    sget v0, Lcom/xiaomi/stat/d/c;->b:I

    .line 10
    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .line 1
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/d/c;->c()V

    .line 8
    :cond_7
    sget-object v0, Lcom/xiaomi/stat/d/c;->c:Ljava/lang/String;

    .line 10
    return-object v0
.end method

.method private static c()V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/xiaomi/stat/d/c;->a:Z

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object v1

    .line 17
    :try_start_10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 25
    move-result-object v0

    .line 26
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 28
    sput v1, Lcom/xiaomi/stat/d/c;->b:I

    .line 30
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 32
    sput-object v0, Lcom/xiaomi/stat/d/c;->c:Ljava/lang/String;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_21} :catch_21

    .line 34
    :catch_21
    return-void
.end method
