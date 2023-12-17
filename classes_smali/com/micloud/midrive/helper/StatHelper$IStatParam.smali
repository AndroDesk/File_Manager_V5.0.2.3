.class public interface abstract Lcom/micloud/midrive/helper/StatHelper$IStatParam;
.super Ljava/lang/Object;
.source "StatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/helper/StatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/helper/StatHelper$IStatParam$Builder;
    }
.end annotation


# virtual methods
.method public abstract putBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract putDouble(Ljava/lang/String;D)V
.end method

.method public abstract putInt(Ljava/lang/String;I)V
.end method

.method public abstract putList(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract putLong(Ljava/lang/String;J)V
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)V
.end method
