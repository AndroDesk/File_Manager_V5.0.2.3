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
.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;->cipher:Ljavax/crypto/Cipher;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/keychainsdk/storage/data/InstalledMasterKey$EncryptionCipher;->iv:[B

    .line 8
    return-void
.end method
