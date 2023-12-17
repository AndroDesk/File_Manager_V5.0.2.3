.class public Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;
.super Ljava/lang/Object;
.source "InstalledMasterKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionCipher"
.end annotation


# instance fields
.field public final cipher:Ljavax/crypto/Cipher;

.field public final iv:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;->cipher:Ljavax/crypto/Cipher;

    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;->iv:[B

    return-void
.end method
