.class public Landroidx/core/content/UnusedAppRestrictionsBackportCallback;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsBackportCallback.java"


# instance fields
.field private mCallback:Le0/a;


# direct methods
.method public constructor <init>(Le0/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;->mCallback:Le0/a;

    .line 6
    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;->mCallback:Le0/a;

    .line 3
    invoke-interface {v0, p1, p2}, Le0/a;->onIsPermissionRevocationEnabledForAppResult(ZZ)V

    .line 6
    return-void
.end method
