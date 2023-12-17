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

    const-string v0, "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le0/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onIsPermissionRevocationEnabledForAppResult(ZZ)V
.end method
