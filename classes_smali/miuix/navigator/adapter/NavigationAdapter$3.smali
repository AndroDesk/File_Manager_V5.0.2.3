.class Lmiuix/navigator/adapter/NavigationAdapter$3;
.super Landroidx/recyclerview/widget/x;
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
.field private final mDragDownConfig:Lmiuix/animation/base/AnimConfig;

.field private final mDragUpConfig:Lmiuix/animation/base/AnimConfig;

.field public final synthetic this$0:Lmiuix/navigator/adapter/NavigationAdapter;


# direct methods
.method public constructor <init>(Lmiuix/navigator/adapter/NavigationAdapter;Landroidx/recyclerview/widget/f$e;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/x;-><init>(Landroidx/recyclerview/widget/f$e;)V

    .line 6
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 8
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 11
    const/4 p2, 0x2

    .line 12
    new-array v0, p2, [F

    .line 14
    fill-array-data v0, :array_30

    .line 17
    const/4 v1, -0x2

    .line 18
    invoke-static {v1, v0}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 28
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 30
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 33
    new-array p2, p2, [F

    .line 35
    fill-array-data p2, :array_38

    .line 38
    invoke-static {v1, p2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 48
    return-void

    .line 49
    :array_30
    .array-data 4
        0x3f666666  # 0.9f
        0x3e4ccccd  # 0.2f
    .end array-data

    .line 57
    :array_38
    .array-data 4
        0x3f666666  # 0.9f
        0x3eb33333  # 0.35f
    .end array-data
.end method


# virtual methods
.method public onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onStartDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 12
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 22
    invoke-static {v2}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    .line 25
    move-result-object v2

    .line 26
    const/high16 v4, 0x3f800000  # 1.0f

    .line 28
    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    .line 34
    iget-object v4, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 36
    invoke-static {v4}, Lmiuix/navigator/adapter/NavigationAdapter;->access$100(Lmiuix/navigator/adapter/NavigationAdapter;)I

    .line 39
    move-result v4

    .line 40
    invoke-interface {v1, v2, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    .line 43
    move-result-object v1

    .line 44
    new-array v2, v0, [Lmiuix/animation/base/AnimConfig;

    .line 46
    iget-object v4, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragUpConfig:Lmiuix/animation/base/AnimConfig;

    .line 48
    aput-object v4, v2, v3

    .line 50
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 55
    invoke-static {p1}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    .line 58
    move-result-object p1

    .line 59
    new-array v0, v0, [Lmiuix/animation/property/FloatProperty;

    .line 61
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 63
    invoke-static {v1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, v0, v3

    .line 69
    const/high16 v1, 0x3b800000  # 0.00390625f

    .line 71
    invoke-virtual {p1, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 74
    return-void
.end method

.method public onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/x;->onStopDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Landroid/view/View;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object p1, v1, v2

    .line 12
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->this$0:Lmiuix/navigator/adapter/NavigationAdapter;

    .line 22
    invoke-static {v1}, Lmiuix/navigator/adapter/NavigationAdapter;->access$200(Lmiuix/navigator/adapter/NavigationAdapter;)Lmiuix/animation/property/ViewProperty;

    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-interface {p1, v1, v3}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Z:Lmiuix/animation/property/ViewProperty;

    .line 33
    invoke-interface {p1, v1, v2}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;I)Lmiuix/animation/IStateStyle;

    .line 36
    move-result-object p1

    .line 37
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    .line 39
    iget-object v1, p0, Lmiuix/navigator/adapter/NavigationAdapter$3;->mDragDownConfig:Lmiuix/animation/base/AnimConfig;

    .line 41
    aput-object v1, v0, v2

    .line 43
    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->to([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 46
    return-void
.end method
