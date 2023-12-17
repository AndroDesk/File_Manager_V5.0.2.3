.class public interface abstract Lcom/cleanmaster/sdk/ICmSdkUpdateCallback;
.super Ljava/lang/Object;
.source "ICmSdkUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Stub;,
        Lcom/cleanmaster/sdk/ICmSdkUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.ICmSdkUpdateCallback"


# virtual methods
.method public abstract FinishUpdateCheck(IJLjava/lang/String;)V
.end method

.method public abstract FinishUpdateData(I)V
.end method
