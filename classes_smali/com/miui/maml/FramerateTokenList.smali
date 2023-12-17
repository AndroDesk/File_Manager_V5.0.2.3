.class public Lcom/miui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/FramerateTokenList$FramerateToken;,
        Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/FramerateTokenList;)Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/FramerateTokenList;->mFramerateChangeListener:Lcom/miui/maml/FramerateTokenList$FramerateChangeListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/FramerateTokenList;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/FramerateTokenList;->onChange()V

    .line 4
    return-void
.end method

.method private onChange()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1e

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 23
    iget v3, v3, Lcom/miui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 25
    cmpl-float v4, v3, v2

    .line 27
    if-lez v4, :cond_a

    .line 29
    move v2, v3

    .line 30
    goto :goto_a

    .line 31
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_36

    .line 32
    iput v2, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 34
    const-string v0, "FramerateTokenList"

    .line 36
    const-string v1, "Frame rate changed, current frame rate is "

    .line 38
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v1

    .line 42
    iget v2, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception v1

    .line 56
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .line 57
    throw v1
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw v1
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .registers 5

    .line 1
    const-string v0, "FramerateTokenList"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "createToken: "

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 25
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;-><init>(Lcom/miui/maml/FramerateTokenList;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 30
    monitor-enter p1

    .line 31
    :try_start_1e
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit p1

    .line 37
    return-object v0

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    .line 40
    throw v0
.end method

.method public getFramerate()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/FramerateTokenList;->mCurFramerate:F

    .line 3
    return v0
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    .line 13
    throw p1
.end method
