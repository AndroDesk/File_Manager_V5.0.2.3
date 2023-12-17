.class public interface abstract Lcom/micloud/midrive/infos/SyncFileBaseInfo;
.super Ljava/lang/Object;
.source "SyncFileBaseInfo.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract getModifyTime()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract setModifyTime(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setSize(J)V
.end method
