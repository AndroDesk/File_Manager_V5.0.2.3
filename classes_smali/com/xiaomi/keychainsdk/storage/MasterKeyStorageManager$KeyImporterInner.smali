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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;SJZLcom/xiaomi/keychainsdk/storage/MasterKeyStorage;)V
    .registers 8

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    iput-short p3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHSid:S

    iput-wide p4, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHUser:J

    iput-boolean p6, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mIsForTest:Z

    iput-object p7, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    return-void
.end method


# virtual methods
.method public generateTransferContext()Lcom/xiaomi/keychainsdk/storage/TransferContext;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->generateTransferContext(Landroid/content/Context;)Lcom/xiaomi/keychainsdk/storage/TransferContext;

    move-result-object v0

    return-object v0
.end method

.method public importMasterKey(Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;)V
    .registers 12

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    monitor-enter v0

    :try_start_3
    new-instance v8, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;

    iget-short v2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHSid:S

    iget-wide v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mHUser:J

    iget-wide v5, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->version:J

    iget-short v7, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->tag:S

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;-><init>(SJJS)V

    iget-object v1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mMasterKeyStorage:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;

    iget-object v2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mIsForTest:Z

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$000()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_1e
    invoke-static {v8}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$100(Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/lang/String;

    move-result-object v3

    :goto_22
    iget-object p2, p2, Lcom/xiaomi/keychainsdk/request/data/VersionedWrappedMasterKey;->wrappedMasterKey:Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorage;->importMasterKey(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/keychainsdk/storage/TransferContext;Lcom/xiaomi/keychainsdk/request/data/WrappedMasterKey;)V

    iget-object p1, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->this$0:Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;

    iget-object p2, p0, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager$KeyImporterInner;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;->access$200(Lcom/xiaomi/keychainsdk/storage/MasterKeyStorageManager;Landroid/content/Context;Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKeyInfo;)Ljava/util/Map;

    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p1
.end method
