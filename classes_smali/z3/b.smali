.class public final Lz3/b;
.super La/b;
.source "SyncAdapterBaseInjectorCompat_V23.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 5
    return-void
.end method


# virtual methods
.method public final Z(ZLandroid/content/SyncResult;)V
    .registers 7

    .line 1
    if-nez p1, :cond_b

    .line 3
    iget-object p1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 5
    iget-wide v0, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 7
    const-wide/16 v2, 0x1

    .line 9
    add-long/2addr v0, v2

    .line 10
    iput-wide v0, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 12
    :cond_b
    return-void
.end method
