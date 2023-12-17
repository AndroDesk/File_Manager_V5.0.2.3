.class Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;
.super Ljava/lang/Object;
.source "AppcompatClassPreLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadClass(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadViewClasses(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;->val$context:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;->preloadActionBarClasses(Landroid/content/Context;)V

    .line 11
    return-void
.end method
