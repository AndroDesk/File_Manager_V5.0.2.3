.class public Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;
.super Ljava/lang/Object;
.source "KeyBagKeyConfig.java"


# static fields
.field public static final CLIENTTICKET_WRAPPER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final CLIENTTICKET_WRAPPER_KEY_GCM_TAG_LENGTH:I

.field public static final CLIENTTICKET_WRAPPER_KEY_IV_LENGTH:I

.field public static final CLIENTTICKET_WRAPPER_KEY_LENGTH:I

.field public static final CLIENTTICKET_WRAPPER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final HSM_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPPadding"

.field public static final HSM_KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA256withRSA"

.field public static final MASTER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final MASTER_KEY_MODE:Ljava/lang/String; = "CBC"

.field public static final MASTER_KEY_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field public static final MASTER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final MASTER_WRAPPER_KEY_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final MASTER_WRAPPER_KEY_GCM_TAG_LENGTH:I

.field public static final MASTER_WRAPPER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_SIZE:I

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_TYPE:Ljava/lang/String; = "RSA"

.field public static final TRANSFER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPPadding"

.field public static final TRANSFER_KEY_MODE:Ljava/lang/String; = "ECB"

.field public static final TRANSFER_KEY_PADDING:Ljava/lang/String; = "OAEPPadding"

.field public static final TRANSFER_KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field public static final TRANSFER_KEY_SIGNATURE_ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final TRANSFER_KEY_SIZE:I

.field public static final TRANSFER_KEY_TYPE:Ljava/lang/String; = "RSA"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->CLIENTTICKET_WRAPPER_KEY_GCM_TAG_LENGTH:I

    const v0, 0x92df6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->CLIENTTICKET_WRAPPER_KEY_IV_LENGTH:I

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->CLIENTTICKET_WRAPPER_KEY_LENGTH:I

    const v0, 0x92d16

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->MASTER_WRAPPER_KEY_GCM_TAG_LENGTH:I

    const v0, 0x92596

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->SOFT_STORAGE_MASTER_PROTECT_KEY_SIZE:I

    const v0, 0x92596

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;->TRANSFER_KEY_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
