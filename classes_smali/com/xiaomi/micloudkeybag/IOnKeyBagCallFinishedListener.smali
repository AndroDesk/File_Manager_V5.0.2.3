.class public interface abstract Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;
.super Ljava/lang/Object;
.source "IOnKeyBagCallFinishedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDecryptFinished(I[B)V
.end method

.method public abstract onEncryptFinished(I[B)V
.end method

.method public abstract onIsSupportedFinished(IZ)V
.end method
