.class final Lcom/miui/maml/util/HideSdkDependencyUtils$1;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "HideSdkDependencyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$bundle:Landroid/os/Bundle;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    .line 5
    iput-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

    .line 7
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$context:Landroid/content/Context;

    .line 3
    iget-object p2, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$intent:Landroid/content/Intent;

    .line 5
    iget-object p3, p0, Lcom/miui/maml/util/HideSdkDependencyUtils$1;->val$bundle:Landroid/os/Bundle;

    .line 7
    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 10
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
