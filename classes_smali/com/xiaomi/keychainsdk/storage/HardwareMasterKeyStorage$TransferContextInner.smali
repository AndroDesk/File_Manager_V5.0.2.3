.class Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;
.super Ljava/lang/Object;
.source "HardwareMasterKeyStorage.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/storage/TransferContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferContextInner"
.end annotation


# instance fields
.field private final mAttestationCA:[Ljava/security/cert/Certificate;

.field private final mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

.field public final transferKeySlot:I


# direct methods
.method public constructor <init>(I[Ljava/security/cert/Certificate;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->transferKeySlot:I

    .line 6
    const/4 p1, 0x0

    .line 7
    aget-object p1, p2, p1

    .line 9
    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->makeX509TransferPublicKey(Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 15
    array-length p1, p2

    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Ljava/security/cert/Certificate;

    .line 23
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mAttestationCA:[Ljava/security/cert/Certificate;

    .line 25
    return-void
.end method


# virtual methods
.method public getAttestationCA()[Ljava/security/cert/Certificate;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mAttestationCA:[Ljava/security/cert/Certificate;

    .line 3
    return-object v0
.end method

.method public getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    .line 3
    return-object v0
.end method
