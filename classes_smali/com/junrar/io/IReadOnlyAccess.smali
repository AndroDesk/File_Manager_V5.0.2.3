.class public interface abstract Lcom/junrar/io/IReadOnlyAccess;
.super Ljava/lang/Object;
.source "IReadOnlyAccess.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getPosition()J
.end method

.method public abstract read()I
.end method

.method public abstract read([BII)I
.end method

.method public abstract readFully([BI)I
.end method

.method public abstract setPosition(J)V
.end method
