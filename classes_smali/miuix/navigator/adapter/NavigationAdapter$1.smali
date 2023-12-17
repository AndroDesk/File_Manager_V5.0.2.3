.class Lmiuix/navigator/adapter/NavigationAdapter$1;
.super Lmiuix/animation/property/ViewProperty;
.source "NavigationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/navigator/adapter/NavigationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/navigator/adapter/NavigationAdapter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$1;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-direct {p0, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/navigator/adapter/NavigationAdapter$1;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiuix/navigator/adapter/NavigationAdapter$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
