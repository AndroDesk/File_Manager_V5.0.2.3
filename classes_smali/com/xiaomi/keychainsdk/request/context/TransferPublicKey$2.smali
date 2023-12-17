.class Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$2;
.super Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.source "TransferPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;->makeX509TransferPublicKey(Ljava/security/cert/Certificate;)Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$rsaPublicKeyX509Cert:Ljava/security/cert/Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$2;->val$rsaPublicKeyX509Cert:Ljava/security/cert/Certificate;

    invoke-direct {p0}, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/keychainsdk/request/context/TransferPublicKey$2;->val$rsaPublicKeyX509Cert:Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/keychainsdk/util/KeyBagDataUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
