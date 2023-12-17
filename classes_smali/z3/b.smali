.class public final Lz3/b;
.super La/b;
.source "SyncAdapterBaseInjectorCompat_V23.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final Z(ZLandroid/content/SyncResult;)V
    .registers 7

    if-nez p1, :cond_b

    iget-object p1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    :cond_b
    return-void
.end method
