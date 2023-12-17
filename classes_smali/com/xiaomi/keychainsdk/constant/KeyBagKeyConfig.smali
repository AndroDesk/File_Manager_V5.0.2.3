.class public Lcom/xiaomi/keychainsdk/constant/KeyBagKeyConfig;
.super Ljava/lang/Object;
.source "KeyBagKeyConfig.java"


# static fields
.field public static final CLIENTTICKET_WRAPPER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final CLIENTTICKET_WRAPPER_KEY_GCM_TAG_LENGTH:I = 0x80

.field public static final CLIENTTICKET_WRAPPER_KEY_IV_LENGTH:I = 0x60

.field public static final CLIENTTICKET_WRAPPER_KEY_LENGTH:I = 0x100

.field public static final CLIENTTICKET_WRAPPER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final HSM_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPPadding"

.field public static final HSM_KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA256withRSA"

.field public static final MASTER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final MASTER_KEY_MODE:Ljava/lang/String; = "CBC"

.field public static final MASTER_KEY_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field public static final MASTER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final MASTER_WRAPPER_KEY_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final MASTER_WRAPPER_KEY_GCM_TAG_LENGTH:I = 0x80

.field public static final MASTER_WRAPPER_KEY_TYPE:Ljava/lang/String; = "AES"

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_SIZE:I = 0x800

.field public static final SOFT_STORAGE_MASTER_PROTECT_KEY_TYPE:Ljava/lang/String; = "RSA"

.field public static final TRANSFER_KEY_CRYPTO_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPPadding"

.field public static final TRANSFER_KEY_MODE:Ljava/lang/String; = "ECB"

.field public static final TRANSFER_KEY_PADDING:Ljava/lang/String; = "OAEPPadding"

.field public static final TRANSFER_KEY_SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field public static final TRANSFER_KEY_SIGNATURE_ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final TRANSFER_KEY_SIZE:I = 0x800

.field public static final TRANSFER_KEY_TYPE:Ljava/lang/String; = "RSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
