.class public Lcom/xiaomi/stat/NetAvailableEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/NetAvailableEvent$Builder;
    }
.end annotation


# static fields
.field public static final RESULT_TYPE_0:I = 0x0

.field public static final RESULT_TYPE_1:I = 0x1

.field public static final RESULT_TYPE_2:I = 0x2


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
.method private constructor <init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->a(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->b(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->b:I

    .line 5
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->c(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->c:I

    .line 6
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->d(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->e(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->e:I

    .line 8
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->f(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->f:J

    .line 9
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->g(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->g:I

    .line 10
    invoke-static {p1}, Lcom/xiaomi/stat/NetAvailableEvent$Builder;->h(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/NetAvailableEvent;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;Lcom/xiaomi/stat/af;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/NetAvailableEvent;-><init>(Lcom/xiaomi/stat/NetAvailableEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRequestStartTime()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->f:J

    .line 3
    return-wide v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->b:I

    .line 3
    return v0
.end method

.method public getResultType()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->e:I

    .line 3
    return v0
.end method

.method public getRetryCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->g:I

    .line 3
    return v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/xiaomi/stat/NetAvailableEvent;->c:I

    .line 3
    return v0
.end method
