.class Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;
.super Lmiuix/animation/property/FloatProperty;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;->this$0:Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;->getValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)F

    move-result p1

    return p1
.end method

.method public getValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)F
    .registers 2

    invoke-virtual {p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->getScale()F

    move-result p1

    return p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;->setValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;F)V
    .registers 3

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->setScale(F)V

    return-void
.end method
