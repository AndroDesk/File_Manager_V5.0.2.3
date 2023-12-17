.class Lmiuix/internal/view/CheckWidgetDrawableAnims$1;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;
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
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-static {p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 9
    invoke-virtual {p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->getScale()F

    .line 12
    move-result p2

    .line 13
    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setScale(F)V

    .line 16
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$1;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 18
    invoke-static {p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    return-void
.end method
