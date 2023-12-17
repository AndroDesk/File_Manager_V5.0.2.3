.class public Lmiuix/internal/hybrid/webkit/GeolocationPermissionsCallback;
.super Ljava/lang/Object;
.source "GeolocationPermissionsCallback.java"

# interfaces
.implements Lmiuix/hybrid/GeolocationPermissions$Callback;


# instance fields
.field private mCallback:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/webkit/GeolocationPermissionsCallback;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/webkit/GeolocationPermissionsCallback;->mCallback:Landroid/webkit/GeolocationPermissions$Callback;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 6
    return-void
.end method
