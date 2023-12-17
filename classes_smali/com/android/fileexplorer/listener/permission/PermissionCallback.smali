.class public interface abstract Lcom/android/fileexplorer/listener/permission/PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionCallback.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onPermissionGranted()V
.end method

.method public abstract onPermissionReject(Ljava/lang/String;)V
.end method

.method public abstract shouldShowRational(Ljava/lang/String;)V
.end method
