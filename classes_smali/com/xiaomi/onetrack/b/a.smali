.class public Lcom/xiaomi/onetrack/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/a$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/lang/String; = "disable_log"

.field public static final b:Ljava/lang/String; = "event"

.field public static final c:Ljava/lang/String; = "events"

.field public static final d:Ljava/lang/String; = "level"

.field public static final e:Ljava/lang/String; = "sample"

.field public static final f:Ljava/lang/String; = "needIds"

.field public static final g:Ljava/lang/String; = "bannedParams"

.field public static final h:Ljava/lang/String; = "version"

.field private static final i:Ljava/lang/String; = "AppConfigUpdater"

.field private static final j:J = 0xa4cb800L

.field private static final k:Ljava/lang/String; = "hash"

.field private static final l:Ljava/lang/String; = "appId"

.field private static final m:Ljava/lang/String; = "apps"

.field private static final n:Ljava/lang/String; = "type"

.field private static final o:Ljava/lang/String; = "status"

.field private static final p:Ljava/lang/String; = "deleted"

.field private static final q:Ljava/lang/String; = "Android"

.field private static r:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x64

.field private static w:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:J = 0x1b7740L

.field private static y:Lcom/xiaomi/onetrack/b/a$a;

.field private static final z:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 7
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 14
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    new-instance v0, Lcom/xiaomi/onetrack/b/a$a;

    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/onetrack/b/a$a;-><init>(Landroid/os/Looper;Lcom/xiaomi/onetrack/b/b;)V

    .line 26
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$a;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    sput-object v0, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->A:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 10

    const-string v0, "event"

    const-string v1, "status"

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-eqz p1, :cond_66

    .line 76
    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_66

    .line 77
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    :goto_17
    if-eqz p0, :cond_34

    .line 79
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_34

    .line 80
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 81
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 83
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    goto :goto_34

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 84
    :cond_34
    :goto_34
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deleted"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_57

    :cond_4c
    if-nez p0, :cond_54

    .line 85
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object p0, v5

    .line 86
    :cond_54
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_5a

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_5a
    move-exception p1

    const-string v0, "mergeEventsElement error:"

    .line 87
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppConfigUpdater"

    .line 88
    invoke-static {p1, v0, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_66
    return-object p0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    const/4 v0, 0x0

    .line 62
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_21

    const-string v1, "events"

    if-eqz p0, :cond_14

    .line 63
    :try_start_d
    iget-object p0, p0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, v0

    .line 65
    :goto_15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 66
    invoke-static {p0, v2}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p0

    const-string p1, "mergeConfig: "

    .line 67
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "AppConfigUpdater"

    .line 68
    invoke-static {p0, p1, v1}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 3
    new-instance v0, Lcom/xiaomi/onetrack/b/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/b/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 5
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 6
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3e

    .line 7
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/a;->d(Ljava/util/List;)V

    const-string p0, "data"

    .line 8
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "apps"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONArray;Ljava/util/List;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_3e

    :catch_27
    move-exception p0

    const-string p1, "saveAppCloudData: "

    .line 11
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppConfigUpdater"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 8

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    const-string v0, "version"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    :goto_a
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    move-result p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", server version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppConfigUpdater"

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_38

    if-gt v0, p0, :cond_38

    .line 32
    invoke-static {p1, p2, p3}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONObject;J)V

    return-void

    :cond_38
    if-eqz p1, :cond_41

    const-string p0, "type"

    .line 33
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_42

    :cond_41
    const/4 p0, -0x1

    .line 34
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_69

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5c

    goto :goto_69

    :cond_5c
    const/4 v0, 0x2

    if-ne p0, v0, :cond_63

    .line 35
    invoke-static {p1, p2, p3}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;J)V

    goto :goto_6c

    :cond_63
    const-string p0, "handleData do nothing!"

    .line 36
    invoke-static {v2, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 37
    :cond_69
    :goto_69
    invoke-static {p1, p2, p3, v0}, Lcom/xiaomi/onetrack/b/a;->a(Lorg/json/JSONObject;JI)V

    :goto_6c
    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .registers 1

    .line 2
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 109
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 110
    new-instance v2, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v2}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    .line 111
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    const-wide/16 v3, 0x64

    .line 112
    iput-wide v3, v2, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 113
    iput-wide p1, v2, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 115
    :cond_25
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p0

    const-string p1, "handleError"

    .line 116
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "AppConfigUpdater"

    .line 117
    invoke-static {p0, p1, p2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method private static a(Ljava/util/List;JLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 97
    invoke-interface {p0, p3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 98
    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    move-exception p0

    const-string p1, "handleInvalidAppIds error:"

    .line 99
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "AppConfigUpdater"

    .line 100
    invoke-static {p0, p1, p2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AppConfigUpdater"

    const-string v1, "updateDataToDb start"

    .line 16
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    if-eqz p0, :cond_67

    .line 18
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_67

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 20
    :goto_2b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_63

    .line 21
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3a

    const-string v6, ""

    goto :goto_40

    :cond_3a
    const-string v6, "appId"

    .line 22
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    :goto_40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 25
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v6, v5, v1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 27
    :cond_63
    invoke-static {p1, v1, v2, v3}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;JLjava/util/List;)V

    goto :goto_6a

    .line 28
    :cond_67
    invoke-static {p1, v1, v2}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;J)V

    :goto_6a
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 2

    .line 125
    new-instance v0, Lcom/xiaomi/onetrack/b/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/b/c;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;J)V
    .registers 6

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_19

    .line 39
    new-instance v1, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v1}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v2, "appId"

    .line 40
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 41
    iput-wide p1, v1, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_27

    .line 44
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_2e

    :cond_27
    const-string p0, "AppConfigUpdater"

    const-string p1, "updateMinVersionData no timestamp can be updated!"

    .line 45
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private static a(Lorg/json/JSONObject;JI)V
    .registers 7

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_51

    .line 47
    new-instance v0, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v1, "hash"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    const-string v1, "appId"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 51
    iput-wide p1, v0, Lcom/xiaomi/onetrack/b/l;->c:J

    const-string p1, "events"

    .line 52
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4c

    .line 53
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p2

    iget-object v1, v0, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p2

    if-eqz p2, :cond_4c

    .line 54
    iget-object v1, p2, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_4c

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 55
    iget-object p2, p2, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_4c
    iput-object p0, v0, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_51
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5f

    .line 60
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_66

    :cond_5f
    const-string p0, "AppConfigUpdater"

    const-string p1, "handleFullOrNoNewData no configuration can be updated!"

    .line 61
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)I
    .registers 3

    const/16 v0, 0x64

    :try_start_2
    const-string v1, "sample"

    .line 51
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_f

    if-ltz p0, :cond_26

    if-le p0, v0, :cond_d

    goto :goto_26

    :cond_d
    move v0, p0

    goto :goto_26

    :catch_f
    move-exception p0

    const-string v1, "getCommonSample Exception:"

    .line 52
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppConfigUpdater"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_26
    return v0
.end method

.method public static synthetic b()Lcom/xiaomi/onetrack/b/a$a;
    .registers 1

    .line 31
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->y:Lcom/xiaomi/onetrack/b/a$a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->b(Ljava/util/List;)V

    goto :goto_19

    :cond_12
    const-string p0, "AppConfigUpdater"

    const-string v0, "AppConfigUpdater Does not meet prerequisites for request"

    .line 36
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pullCloudData start, appIds: "

    .line 1
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppConfigUpdater"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 4
    :cond_1d
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    :try_start_2c
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "oa"

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ov"

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ob"

    .line 9
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ii"

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    move-result v5
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_55} :catch_e3
    .catchall {:try_start_2c .. :try_end_55} :catchall_e1

    const-string v6, "1"

    if-eqz v5, :cond_5b

    move-object v5, v6

    goto :goto_5d

    :cond_5b
    :try_start_5b
    const-string v5, "0"

    :goto_5d
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sv"

    const-string v5, "2.0.2"

    .line 11
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appVer"

    .line 12
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "av"

    .line 13
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ml"

    .line 14
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "re"

    .line 15
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ail"

    .line 16
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sender"

    .line 17
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "platform"

    const-string v5, "Android"

    .line 18
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "supTip"

    .line 19
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/util/x;->c()Ljava/lang/String;

    move-result-object v4

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pullData:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v4, v0, v3}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_e0} :catch_e3
    .catchall {:try_start_5b .. :try_end_e0} :catchall_e1

    goto :goto_fc

    :catchall_e1
    move-exception p0

    goto :goto_102

    :catch_e3
    move-exception p0

    .line 25
    :try_start_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullCloudData error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_e4 .. :try_end_fc} :catchall_e1

    .line 26
    :goto_fc
    sget-object p0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_108

    :goto_102
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    throw p0

    :cond_108
    :goto_108
    return-void
.end method

.method private static b(Lorg/json/JSONObject;J)V
    .registers 9

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "AppConfigUpdater"

    if-eqz p0, :cond_39

    const-string v2, "events"

    .line 38
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 39
    new-instance v2, Lcom/xiaomi/onetrack/b/l;

    invoke-direct {v2}, Lcom/xiaomi/onetrack/b/l;-><init>()V

    const-string v3, "hash"

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/onetrack/b/l;->d:Ljava/lang/String;

    const-string v3, "appId"

    .line 41
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    iput-object v3, v2, Lcom/xiaomi/onetrack/b/l;->a:Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->b(Lorg/json/JSONObject;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/xiaomi/onetrack/b/l;->b:J

    .line 44
    iput-wide p1, v2, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 45
    invoke-static {v3, p0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v2, Lcom/xiaomi/onetrack/b/l;->e:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_39
    const-string p0, "handleIncrementalUpdate config is not change!"

    .line 47
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4c

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/util/ArrayList;)V

    goto :goto_51

    :cond_4c
    const-string p0, "handleIncrementalUpdate no configuration can be updated!"

    .line 50
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 5
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "appId"

    .line 6
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hash"

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_2f
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    :cond_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/onetrack/b/a;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 7
    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 8
    sget-object v1, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    const-string p0, "AppConfigUpdater"

    const-string v0, "net is not connected!"

    .line 2
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/b/h;->f(Ljava/lang/String;)Lcom/xiaomi/onetrack/b/l;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_1b

    return v0

    .line 4
    :cond_1b
    iget-wide v2, p0, Lcom/xiaomi/onetrack/b/l;->c:J

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-ltz p0, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb800

    cmp-long p0, v2, v4

    if-lez p0, :cond_32

    goto :goto_33

    :cond_32
    return v1

    :cond_33
    :goto_33
    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/b/a;->w:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Long;

    .line 9
    if-eqz p0, :cond_2c

    .line 11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v2

    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide/16 v2, 0x0

    .line 22
    cmp-long v0, v0, v2

    .line 24
    if-ltz v0, :cond_2c

    .line 26
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 29
    move-result-wide v0

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    move-result-wide v2

    .line 34
    sub-long/2addr v0, v2

    .line 35
    const-wide/32 v2, 0x1b7740

    .line 38
    cmp-long p0, v0, v2

    .line 40
    if-lez p0, :cond_2a

    .line 42
    goto :goto_2c

    .line 43
    :cond_2a
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    .line 46
    return p0
.end method
