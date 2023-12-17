.class public abstract Landroidx/core/content/UnusedAppRestrictionsBackportService;
.super Landroid/app/Service;
.source "UnusedAppRestrictionsBackportService.java"


# static fields
.field public static final ACTION_UNUSED_APP_RESTRICTIONS_BACKPORT_CONNECTION:Ljava/lang/String; = "android.support.unusedapprestrictions.action.CustomUnusedAppRestrictionsBackportService"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ActionValue"
        }
    .end annotation
.end field


# instance fields
.field private mBinder:Le0/b$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;

    .line 6
    invoke-direct {v0, p0}, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;-><init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V

    .line 9
    iput-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->mBinder:Le0/b$a;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract isPermissionRevocationEnabled(Landroidx/core/content/UnusedAppRestrictionsBackportCallback;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService;->mBinder:Le0/b$a;

    .line 3
    return-object p1
.end method
