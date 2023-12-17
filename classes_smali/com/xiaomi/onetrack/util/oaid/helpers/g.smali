.class public Lcom/xiaomi/onetrack/util/oaid/helpers/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;,
        Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "MsaSDKHelper"


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    .line 1
    const-string v0, ""

    .line 3
    :try_start_2
    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "com.bun.supplier.IIdentifierListener"

    .line 11
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;

    .line 17
    invoke-direct {v3, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/g$b;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/g;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x1

    .line 25
    new-array v6, v5, [Ljava/lang/Class;

    .line 27
    const/4 v7, 0x0

    .line 28
    aput-object v2, v6, v7

    .line 30
    invoke-static {v4, v6, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    const-string v4, "InitSdk"

    .line 36
    const/4 v6, 0x3

    .line 37
    new-array v8, v6, [Ljava/lang/Class;

    .line 39
    const-class v9, Landroid/content/Context;

    .line 41
    aput-object v9, v8, v7

    .line 43
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 45
    aput-object v9, v8, v5

    .line 47
    const/4 v9, 0x2

    .line 48
    aput-object v2, v8, v9

    .line 50
    invoke-virtual {v1, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    move-result-object v2

    .line 54
    new-array v4, v6, [Ljava/lang/Object;

    .line 56
    aput-object p1, v4, v7

    .line 58
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    aput-object p1, v4, v5

    .line 62
    aput-object v3, v4, v9

    .line 64
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/g;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 69
    const-wide/16 v1, 0x1

    .line 71
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;

    .line 79
    if-eqz p1, :cond_7a

    .line 81
    iget-object v1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->c:[Ljava/lang/Object;

    .line 83
    aget-object v1, v1, v5

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    move-result-object v1

    .line 89
    const-string v2, "getOAID"

    .line 91
    new-array v3, v7, [Ljava/lang/Class;

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    move-result-object v1

    .line 97
    iget-object p1, p1, Lcom/xiaomi/onetrack/util/oaid/helpers/g$a;->c:[Ljava/lang/Object;

    .line 99
    aget-object p1, p1, v5

    .line 101
    new-array v2, v7, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1
    :try_end_6e
    .catchall {:try_start_2 .. :try_end_6e} :catchall_70

    .line 111
    move-object v0, p1

    .line 112
    goto :goto_7a

    .line 113
    :catchall_70
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    const-string v1, "MsaSDKHelper"

    .line 120
    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_7a
    :goto_7a
    return-object v0
.end method
