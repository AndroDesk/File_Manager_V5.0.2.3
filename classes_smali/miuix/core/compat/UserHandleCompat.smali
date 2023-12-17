.class public Lmiuix/core/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNew(I)Landroid/os/UserHandle;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 3
    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    return-object v0
.end method
