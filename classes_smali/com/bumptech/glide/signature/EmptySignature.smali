.class public final Lcom/bumptech/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/signature/EmptySignature;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/signature/EmptySignature;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static obtain()Lcom/bumptech/glide/signature/EmptySignature;
    .registers 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;

    .line 3
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2

    return-void
.end method
