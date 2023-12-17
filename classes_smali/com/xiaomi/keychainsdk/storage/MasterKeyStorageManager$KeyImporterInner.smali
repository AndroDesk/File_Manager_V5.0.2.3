.class Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;
.super Ljava/lang/Object;
.source "MasterKeyStorageManager.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/storage/KeyImporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyImporterInner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHSid:S

.field private final mHUser:J

.field private final mIsForTest:Z

.field private final mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

.field public final synthetic this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    .line 8
    iput-short p3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHSid:S

    .line 10
    iput-wide p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHUser:J

    .line 12
    iput-boolean p6, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mIsForTest:Z

    .line 14
    iput-object p7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    .line 16
    return-void
.end method


# virtual methods
.method public generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    .line 5
    invoke-interface {v0, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    new-instance v8, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    .line 6
    iget-short v2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHSid:S

    .line 8
    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHUser:J

    .line 10
    iget-wide v5, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->version:J

    .line 12
    iget-short v7, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->tag:S

    .line 14
    move-object v1, v8

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;-><init>(SJJS)V

    .line 18
    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    .line 20
    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    .line 22
    iget-boolean v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mIsForTest:Z

    .line 24
    if-eqz v3, :cond_1e

    .line 26
    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$000()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-static {v8}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$100(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    :goto_22
    iget-object p2, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    .line 37
    invoke-interface {v1, v2, v3, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V

    .line 40
    iget-object p1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    .line 42
    iget-object p2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {p1, p2, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$200(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method
