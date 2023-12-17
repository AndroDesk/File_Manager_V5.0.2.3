.class Lmiuix/internal/view/CheckWidgetDrawableAnims$6;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"

# interfaces
.implements Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;->initAnim()V
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
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .registers 4

    .line 1
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$6;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-static {p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    return-void
.end method
