.class Lmiuix/internal/view/CheckWidgetDrawableAnims$2;
.super Lmiuix/animation/property/FloatProperty;
.source "CheckWidgetDrawableAnims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->getValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;)F
    .registers 2

    .line 2
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getScale()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->setValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;F)V
    .registers 3

    .line 2
    iget-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$2;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-static {p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->access$000(Lmiuix/internal/view/CheckWidgetDrawableAnims;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setScale(F)V

    return-void
.end method
