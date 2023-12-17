.class public final Lcom/xiaomi/stat/NetAvailableEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/NetAvailableEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b:I

    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c:I

    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e:I

    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f:J

    .line 3
    return-wide v0
.end method

.method public static synthetic g(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h:Ljava/lang/String;

    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/stat/NetAvailableEvent;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/stat/NetAvailableEvent;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/xiaomi/stat/NetAvailableEvent;-><init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;Lcom/xiaomi/stat/af;)V

    .line 7
    return-object v0
.end method

.method public exception(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public ext(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public flag(Ljava/lang/String;)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public requestStartTime(J)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f:J

    .line 3
    return-object p0
.end method

.method public responseCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b:I

    .line 3
    return-object p0
.end method

.method public resultType(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e:I

    .line 3
    return-object p0
.end method

.method public retryCount(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g:I

    .line 3
    return-object p0
.end method

.method public statusCode(I)Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    .registers 2

    .line 1
    iput p1, p0, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c:I

    .line 3
    return-object p0
.end method
