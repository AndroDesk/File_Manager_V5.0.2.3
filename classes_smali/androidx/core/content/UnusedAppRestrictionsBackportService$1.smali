.class Landroidx/core/content/UnusedAppRestrictionsBackportService$1;
.super Le0/b$a;
.source "UnusedAppRestrictionsBackportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/UnusedAppRestrictionsBackportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;


# direct methods
.method public constructor <init>(Landroidx/core/content/UnusedAppRestrictionsBackportService;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    .line 3
    invoke-direct {p0}, Le0/b$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public isPermissionRevocationEnabledForApp(Le0/a;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    new-instance v0, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;

    .line 6
    invoke-direct {v0, p1}, Landroidx/core/content/UnusedAppRestrictionsBackportCallback;-><init>(Le0/a;)V

    .line 9
    iget-object p1, p0, Landroidx/core/content/UnusedAppRestrictionsBackportService$1;->this$0:Landroidx/core/content/UnusedAppRestrictionsBackportService;

    .line 11
    invoke-virtual {p1, v0}, Landroidx/core/content/UnusedAppRestrictionsBackportService;->isPermissionRevocationEnabled(Landroidx/core/content/UnusedAppRestrictionsBackportCallback;)V

    .line 14
    return-void
.end method
