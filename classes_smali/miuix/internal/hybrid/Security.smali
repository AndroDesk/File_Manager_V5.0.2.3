.class public Lmiuix/internal/hybrid/Security;
.super Ljava/lang/Object;
.source "Security.java"


# instance fields
.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/Security;->signature:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lmiuix/internal/hybrid/Security;->timestamp:J

    .line 3
    return-wide v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/Security;->signature:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/internal/hybrid/Security;->timestamp:J

    .line 3
    return-void
.end method
