.class public interface abstract Le0/b;
.super Ljava/lang/Object;
.source "IUnusedAppRestrictionsBackportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/b$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportService"

    .line 3
    const/16 v1, 0x24

    .line 5
    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Le0/b;->e:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract isPermissionRevocationEnabledForApp(Le0/a;)V
.end method
