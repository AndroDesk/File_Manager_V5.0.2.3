.class public Lcom/xiaomi/onetrack/f/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/f/b$b;,
        Lcom/xiaomi/onetrack/f/b$a;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final d:Ljava/lang/String; = "Event"


# instance fields
.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lorg/json/JSONObject;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/onetrack/f/b;->a:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/onetrack/f/b;->b:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/onetrack/f/b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/onetrack/f/b$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->a(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->b(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->c(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->d(Lcom/xiaomi/onetrack/f/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->e(Lcom/xiaomi/onetrack/f/b$a;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->f(Lcom/xiaomi/onetrack/f/b$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/b$a;->g(Lcom/xiaomi/onetrack/f/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/f/b$a;Lcom/xiaomi/onetrack/f/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/f/b;-><init>(Lcom/xiaomi/onetrack/f/b$a;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/onetrack/api/d;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p4, :cond_9c

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v2

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v2

    :goto_23
    if-eqz v2, :cond_41

    if-eqz p2, :cond_57

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_57

    :cond_41
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_57
    :goto_57
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_93

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_93

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_93
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->z:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->f()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9c
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->j:Ljava/lang/String;

    const-string p5, "Android"

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->b()J

    move-result-wide v2

    invoke-virtual {v0, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object p5

    invoke-virtual {p5}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->w:Ljava/lang/String;

    const-string p5, "2.0.2"

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->c()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_12e

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/d;->d()Ljava/lang/String;

    move-result-object p0

    goto :goto_130

    :cond_12e
    const-string p0, "default"

    :goto_130
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->q:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    if-eqz p0, :cond_140

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    goto :goto_142

    :cond_140
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    :goto_142
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$Mode;->getType()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->A:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->B:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->c:Z

    if-eqz p0, :cond_162

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->C:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_162
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->D:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/onetrack/util/v;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->E:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->G:Ljava/lang/String;

    invoke-virtual {v0, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->I:Ljava/lang/String;

    const-string p1, "JS"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .registers 13

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Ljava/lang/String;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Ljava/lang/String;Lcom/xiaomi/onetrack/util/v;ZZ)Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/onetrack/f/b$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p5, :cond_6b

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->isInternational()Z

    move-result v2

    :goto_1f
    if-eqz v2, :cond_39

    if-eqz p2, :cond_4f

    invoke-interface {p2, p0}, Lcom/xiaomi/onetrack/OneTrack$IEventHook;->isRecommendEvent(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4f

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->e:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4f

    :cond_39
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->c:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4f
    :goto_4f
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->g:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/o;->a()Lcom/xiaomi/onetrack/util/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/util/o;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, p1, p3}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/f/b;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->z:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->f()I

    move-result p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6b
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->j:Ljava/lang/String;

    const-string p2, "Android"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->r:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v0, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/g/c;->a(Landroid/content/Context;)Lcom/xiaomi/onetrack/OneTrack$NetType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/onetrack/OneTrack$NetType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->u:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->w:Ljava/lang/String;

    const-string p2, "2.0.2"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p6, :cond_e3

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ec

    :cond_e3
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_ec
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->F:Ljava/lang/String;

    invoke-virtual {v0, p0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_109

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getChannel()Ljava/lang/String;

    move-result-object p0

    goto :goto_10b

    :cond_109
    const-string p0, "default"

    :goto_10b
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->q:Ljava/lang/String;

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    if-eqz p0, :cond_11b

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getMode()Lcom/xiaomi/onetrack/OneTrack$Mode;

    move-result-object p0

    goto :goto_11d

    :cond_11b
    sget-object p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    :goto_11d
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrack$Mode;->getType()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->A:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->B:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->B()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-boolean p0, Lcom/xiaomi/onetrack/util/p;->c:Z

    if-eqz p0, :cond_13d

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->C:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_13d
    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->D:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/xiaomi/onetrack/util/v;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->E:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/xiaomi/onetrack/f/b$b;->G:Ljava/lang/String;

    invoke-virtual {v0, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    sget-object v1, Lcom/xiaomi/onetrack/f/b$b;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->y:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1e
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object p1, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_15

    :cond_c
    sget-object p2, Lcom/xiaomi/onetrack/f/b$b;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/onetrack/Configuration;->getPluginId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_15
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->e:J

    return-wide v0
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/onetrack/f/b;->i:I

    return v0
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/onetrack/f/b;->k:J

    return-wide v0
.end method

.method public i()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_30

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->j:Lorg/json/JSONObject;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/xiaomi/onetrack/f/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_28

    if-nez v0, :cond_30

    const/4 v0, 0x1

    return v0

    :catch_28
    move-exception v0

    const-string v1, "Event"

    const-string v2, "check event isValid error, "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    const/4 v0, 0x0

    return v0
.end method
