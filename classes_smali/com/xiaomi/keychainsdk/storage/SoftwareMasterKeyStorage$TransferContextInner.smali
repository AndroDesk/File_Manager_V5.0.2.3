.class Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;
.super Ljava/lang/Object;
.source "SoftwareMasterKeyStorage.java"

# interfaces
.implements Lcom/xiaomi/keychainsdk/storage/TransferContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferContextInner"
.end annotation


# instance fields
.field private final mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

.field public final rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    iput-object v0, p0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;->rsaPrivateKey:Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->makeRSATransferPublicKey(Ljava/security/interfaces/RSAPublicKey;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    return-void
.end method


# virtual methods
.method public getAttestationCA()[Ljava/security/cert/Certificate;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getTransferPublicKey()Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/storage/SoftwareMasterKeyStorage$TransferContextInner;->mTransferPublicKey:Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;

    return-object v0
.end method
