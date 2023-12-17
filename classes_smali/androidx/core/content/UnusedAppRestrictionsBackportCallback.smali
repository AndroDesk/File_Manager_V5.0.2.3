.class public Landroidx/core/content/UnusedAppRestrictionsBackportCallback;
.super Ljava/lang/Object;
.source "UnusedAppRestrictionsBackportCallback.java"


# instance fields
.field private mCallback:Le0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Le0/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;->mCallback:Le0/a;

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .registers 4

    iget-object v0, p0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;->mCallback:Le0/a;

    invoke-interface {v0, p1, p2}, Le0/a;->onIsPermissionRevocationEnabledForAppResult(ZZ)V

    return-void
.end method
