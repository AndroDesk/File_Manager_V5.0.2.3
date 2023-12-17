.class public interface abstract Le0/a;
.super Ljava/lang/Object;
.source "IUnusedAppRestrictionsBackportCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/a$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback"

    .line 3
    const/16 v1, 0x24

    .line 5
    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Le0/a;->d:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract onIsPermissionRevocationEnabledForAppResult(ZZ)V
.end method
