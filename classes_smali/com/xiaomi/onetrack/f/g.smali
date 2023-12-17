.class public Lcom/xiaomi/onetrack/f/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackApp"

.field private static b:Lcom/xiaomi/onetrack/f/g;

.field private static c:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/f/i;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/onetrack/f/i;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/onetrack/f/g;->c:Landroid/content/BroadcastReceiver;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/xiaomi/onetrack/f/h;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/f/h;-><init>(Lcom/xiaomi/onetrack/f/g;Landroid/content/Context;)V

    .line 13
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/xiaomi/onetrack/f/g;

    .line 7
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/f/g;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    .line 12
    :cond_b
    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/f/g;->c(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/xiaomi/onetrack/f/g;->c:Landroid/content/BroadcastReceiver;

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    return-void
.end method
