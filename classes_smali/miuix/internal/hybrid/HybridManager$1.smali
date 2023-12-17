.class Lmiuix/internal/hybrid/HybridManager$1;
.super Ljava/lang/Object;
.source "HybridManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/hybrid/HybridManager;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/hybrid/HybridManager;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/hybrid/HybridManager$1;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager$1;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lmiuix/internal/hybrid/HybridManager;->access$002(Lmiuix/internal/hybrid/HybridManager;Z)Z

    .line 7
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lmiuix/internal/hybrid/HybridManager$1;->this$0:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lmiuix/internal/hybrid/HybridManager;->access$002(Lmiuix/internal/hybrid/HybridManager;Z)Z

    .line 7
    return-void
.end method
