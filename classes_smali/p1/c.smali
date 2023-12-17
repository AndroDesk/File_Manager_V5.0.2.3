.class public interface abstract Lp1/c;
.super Ljava/lang/Object;
.source "IKssDownloadRequestResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp1/c$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getBlock(I)Lp1/c$a;
.end method

.method public abstract getBlockCount()I
.end method

.method public abstract getBlockUrls(J)[Ljava/lang/String;
.end method

.method public abstract getHash()Ljava/lang/String;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getModifyTime()J
.end method

.method public abstract getSecureKey()[B
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTotalSize()J
.end method
