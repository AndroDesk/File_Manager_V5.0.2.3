.class Lmiuix/internal/view/CheckWidgetDrawableAnims$7;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;->startUnPressedAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_15

    .line 13
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 15
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$100(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 22
    :cond_15
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 24
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2a

    .line 34
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 36
    invoke-static {v0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$200(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/animation/physics/SpringAnimation;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 43
    :cond_2a
    return-void
.end method
