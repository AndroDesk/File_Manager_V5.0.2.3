.class Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;
.super Le0/a$a;
.source "UnusedAppRestrictionsBackportServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->getBackportCallback()Le0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;


# direct methods
.method public constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    .line 3
    invoke-direct {p0}, Le0/a$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onIsPermissionRevocationEnabledForAppResult(ZZ)V
    .registers 3

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    if-eqz p2, :cond_11

    .line 5
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    .line 7
    iget-object p1, p1, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Ls/a;

    .line 9
    const/4 p2, 0x3

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 17
    goto :goto_31

    .line 18
    :cond_11
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    .line 20
    iget-object p1, p1, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Ls/a;

    .line 22
    const/4 p2, 0x2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 30
    goto :goto_31

    .line 31
    :cond_1e
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;

    .line 33
    iget-object p1, p1, Landroidx/core/content/UnusedAppRestrictionsBackportServiceConnection;->mResultFuture:Ls/a;

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ls/a;->g(Ljava/lang/Integer;)Z

    .line 43
    const-string p1, "PackageManagerCompat"

    .line 45
    const-string p2, "Unable to retrieve the permission revocation setting from the backport"

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_31
    return-void
.end method
