.class public Lcom/xiaomi/onetrack/api/ao;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/ao$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "name"

.field public static final b:Ljava/lang/String; = "gender"

.field public static final c:Ljava/lang/String; = "birthday"

.field public static final d:Ljava/lang/String; = "phone"

.field public static final e:Ljava/lang/String; = "job"

.field public static final f:Ljava/lang/String; = "hobby"

.field public static final g:Ljava/lang/String; = "region"

.field public static final h:Ljava/lang/String; = "province"

.field public static final i:Ljava/lang/String; = "city"


# instance fields
.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/api/ap;)V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/onetrack/api/ao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->n:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic d(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->m:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic g(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i(Lcom/xiaomi/onetrack/api/ao;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ao;->k:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->l:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->n:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->p:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->q:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ao;->r:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "name"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gender"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "birthday"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "job"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hobby"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "region"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "province"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "city"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ao;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_49
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/ao;->j()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
