.class public Lxcrash/XCrash$InitParameters;
.super Ljava/lang/Object;
.source "XCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxcrash/XCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitParameters"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:[Ljava/lang/String;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lxcrash/i;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:[Ljava/lang/String;

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    .line 9
    const/16 v1, 0x1388

    .line 11
    iput v1, p0, Lxcrash/XCrash$InitParameters;->c:I

    .line 13
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->d:Lxcrash/i;

    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lxcrash/XCrash$InitParameters;->e:I

    .line 18
    const/16 v2, 0x80

    .line 20
    iput v2, p0, Lxcrash/XCrash$InitParameters;->f:I

    .line 22
    const/4 v2, 0x1

    .line 23
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->g:Z

    .line 25
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->h:Z

    .line 27
    const/16 v3, 0xa

    .line 29
    iput v3, p0, Lxcrash/XCrash$InitParameters;->i:I

    .line 31
    const/16 v4, 0x32

    .line 33
    iput v4, p0, Lxcrash/XCrash$InitParameters;->j:I

    .line 35
    iput v4, p0, Lxcrash/XCrash$InitParameters;->k:I

    .line 37
    const/16 v5, 0xc8

    .line 39
    iput v5, p0, Lxcrash/XCrash$InitParameters;->l:I

    .line 41
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->m:Z

    .line 43
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->n:Z

    .line 45
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->o:Z

    .line 47
    iput v1, p0, Lxcrash/XCrash$InitParameters;->p:I

    .line 49
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->q:[Ljava/lang/String;

    .line 51
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->r:Z

    .line 53
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->s:Z

    .line 55
    iput v3, p0, Lxcrash/XCrash$InitParameters;->t:I

    .line 57
    iput v4, p0, Lxcrash/XCrash$InitParameters;->u:I

    .line 59
    iput v4, p0, Lxcrash/XCrash$InitParameters;->v:I

    .line 61
    iput v5, p0, Lxcrash/XCrash$InitParameters;->w:I

    .line 63
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->x:Z

    .line 65
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->y:Z

    .line 67
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->z:Z

    .line 69
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->A:Z

    .line 71
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->B:Z

    .line 73
    iput v1, p0, Lxcrash/XCrash$InitParameters;->C:I

    .line 75
    iput-object v0, p0, Lxcrash/XCrash$InitParameters;->D:[Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->E:Z

    .line 79
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->F:Z

    .line 81
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->G:Z

    .line 83
    iput v3, p0, Lxcrash/XCrash$InitParameters;->H:I

    .line 85
    iput v4, p0, Lxcrash/XCrash$InitParameters;->I:I

    .line 87
    iput v4, p0, Lxcrash/XCrash$InitParameters;->J:I

    .line 89
    iput v5, p0, Lxcrash/XCrash$InitParameters;->K:I

    .line 91
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->L:Z

    .line 93
    iput-boolean v2, p0, Lxcrash/XCrash$InitParameters;->M:Z

    .line 95
    return-void
.end method


# virtual methods
.method public disableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->E:Z

    .line 4
    return-object p0
.end method

.method public disableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->g:Z

    .line 4
    return-object p0
.end method

.method public disableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->r:Z

    .line 4
    return-object p0
.end method

.method public enableAnrCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->E:Z

    .line 4
    return-object p0
.end method

.method public enableJavaCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->g:Z

    .line 4
    return-object p0
.end method

.method public enableNativeCrashHandler()Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxcrash/XCrash$InitParameters;->r:Z

    .line 4
    return-object p0
.end method

.method public setAnrCallback(Lxcrash/g;)Lxcrash/XCrash$InitParameters;
    .registers 2

    return-object p0
.end method

.method public setAnrCheckProcessState(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->G:Z

    .line 3
    return-object p0
.end method

.method public setAnrDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->L:Z

    .line 3
    return-object p0
.end method

.method public setAnrDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->M:Z

    .line 3
    return-object p0
.end method

.method public setAnrLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_4

    .line 4
    move p1, v0

    .line 5
    :cond_4
    iput p1, p0, Lxcrash/XCrash$InitParameters;->H:I

    .line 7
    return-object p0
.end method

.method public setAnrLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->J:I

    .line 3
    return-object p0
.end method

.method public setAnrLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->K:I

    .line 3
    return-object p0
.end method

.method public setAnrLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->I:I

    .line 3
    return-object p0
.end method

.method public setAnrRethrow(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->F:Z

    .line 3
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setJavaCallback(Lxcrash/g;)Lxcrash/XCrash$InitParameters;
    .registers 2

    return-object p0
.end method

.method public setJavaDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->o:Z

    .line 3
    return-object p0
.end method

.method public setJavaDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iput p1, p0, Lxcrash/XCrash$InitParameters;->p:I

    .line 6
    return-object p0
.end method

.method public setJavaDumpAllThreadsWhiteList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->q:[Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setJavaDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->m:Z

    .line 3
    return-object p0
.end method

.method public setJavaDumpNetworkInfo(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->n:Z

    .line 3
    return-object p0
.end method

.method public setJavaLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_4

    .line 4
    move p1, v0

    .line 5
    :cond_4
    iput p1, p0, Lxcrash/XCrash$InitParameters;->i:I

    .line 7
    return-object p0
.end method

.method public setJavaLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->k:I

    .line 3
    return-object p0
.end method

.method public setJavaLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->l:I

    .line 3
    return-object p0
.end method

.method public setJavaLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->j:I

    .line 3
    return-object p0
.end method

.method public setJavaRethrow(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->h:Z

    .line 3
    return-object p0
.end method

.method public setLibLoader(Lxcrash/h;)Lxcrash/XCrash$InitParameters;
    .registers 2

    return-object p0
.end method

.method public setLogDir(Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setLogFileMaintainDelayMs(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iput p1, p0, Lxcrash/XCrash$InitParameters;->c:I

    .line 6
    return-object p0
.end method

.method public setLogger(Lxcrash/i;)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->d:Lxcrash/i;

    .line 3
    return-object p0
.end method

.method public setNativeCallback(Lxcrash/g;)Lxcrash/XCrash$InitParameters;
    .registers 2

    return-object p0
.end method

.method public setNativeDumpAllThreads(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->B:Z

    .line 3
    return-object p0
.end method

.method public setNativeDumpAllThreadsCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iput p1, p0, Lxcrash/XCrash$InitParameters;->C:I

    .line 6
    return-object p0
.end method

.method public setNativeDumpAllThreadsWhiteList([Ljava/lang/String;)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/XCrash$InitParameters;->D:[Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setNativeDumpElfHash(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->x:Z

    .line 3
    return-object p0
.end method

.method public setNativeDumpFds(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->z:Z

    .line 3
    return-object p0
.end method

.method public setNativeDumpMap(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->y:Z

    .line 3
    return-object p0
.end method

.method public setNativeDumpNetwork(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->A:Z

    .line 3
    return-object p0
.end method

.method public setNativeLogCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_4

    .line 4
    move p1, v0

    .line 5
    :cond_4
    iput p1, p0, Lxcrash/XCrash$InitParameters;->t:I

    .line 7
    return-object p0
.end method

.method public setNativeLogcatEventsLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->v:I

    .line 3
    return-object p0
.end method

.method public setNativeLogcatMainLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->w:I

    .line 3
    return-object p0
.end method

.method public setNativeLogcatSystemLines(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput p1, p0, Lxcrash/XCrash$InitParameters;->u:I

    .line 3
    return-object p0
.end method

.method public setNativeRethrow(Z)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    iput-boolean p1, p0, Lxcrash/XCrash$InitParameters;->s:Z

    .line 3
    return-object p0
.end method

.method public setPlaceholderCountMax(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iput p1, p0, Lxcrash/XCrash$InitParameters;->e:I

    .line 6
    return-object p0
.end method

.method public setPlaceholderSizeKb(I)Lxcrash/XCrash$InitParameters;
    .registers 2

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iput p1, p0, Lxcrash/XCrash$InitParameters;->f:I

    .line 6
    return-object p0
.end method
