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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(I[Ljava/security/cert/Certificate;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->transferKeySlot:I

    const/4 p1, 0x0

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->makeX509TransferPublicKey(Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    array-length p1, p2

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mAttestationCA:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public getAttestationCA()[Ljava/security/cert/Certificate;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mAttestationCA:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/HardwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    return-object v0
.end method
